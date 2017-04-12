package board.model.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import board.model.vo.Board;

import static common.JDBCTemplate.*;

public class BoardDao {
	
	public BoardDao(){}

	public int getListCount(Connection con) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = "select count(*) from board";
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()){
				listCount = rset.getInt(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(stmt);
			close(rset);
		}
		
		return listCount;
	}

	//페이지 단위로 목록 조회용 메소드
	public List<Board> selectList(Connection con, 
			int currentPage, int limit) {
		List<Board> blist = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		//최신글이 맨 위로 오게함
		String query = "select * from ("
				+ "select rownum rnum, board_num, "
				+ "board_writer, board_title, board_content, "
				+ "board_original_filename, board_rename_filename, "
				+ "board_reply_ref, board_reply_lev, board_reply_seq, "
				+ "board_date, board_readcount "
				+ "from (select * from board order by "
				+ "board_reply_ref desc, board_reply_seq asc)) "
				+ "where rnum >= ? and rnum <= ?";
				
		//읽기 시작할 시작행번호
		int startRow = (currentPage - 1) * limit + 1;
		//읽을 마지막 행번호
		int endRow = startRow + limit - 1;
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			if(rset != null){
				blist = new ArrayList<Board>();
			}
			
			while(rset.next()){
				Board b = new Board();
				
				b.setBoardNum(rset.getInt("board_num"));
				b.setBoardTitle(rset.getString("board_title"));
				b.setBoardWriter(rset.getString("board_writer"));
				b.setBoardContent(rset.getString("board_content"));
				b.setBoardDate(rset.getDate("board_date"));
				b.setBoardOriginalFileName(rset.getString("board_original_filename"));
				b.setBoardRenameFileName(rset.getString("board_rename_filename"));
				b.setBoardReadCount(rset.getInt("board_readcount"));
				b.setBoardReplyRef(rset.getInt("board_reply_ref"));
				b.setBoardReplyLev(rset.getInt("board_reply_lev"));
				b.setBoardReplySeq(rset.getInt("board_reply_seq"));
				
				blist.add(b);
			}			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		return blist;
	}

}








