package board.model.dao;

import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import static common.JDBCTemplate.*;
import board.model.vo.Post;

public class PostDao {
	private Properties prop = new Properties();

	public PostDao() {
		try {
			prop.load(new InputStreamReader(this.getClass().getResourceAsStream("post.properties")));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

//	오후 임성혁 쿼리문 수정
	public List<Post> selectList(Connection con, int limit, int boardNo, int currentPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Post> plist = null;
		int startRow = (currentPage - 1) * limit + 1;
		int endRow = startRow + limit - 1;
		
		String query =  "select rnum, post_no, post_name, post_date, post_contents, board_no, pno, read_count, fname, refname from " +
						"(select  rownum rnum, p.post_no, post_name, " +
						 "post_date, post_contents, board_no, pno, " +
						 "post_ref_no, read_count, fname, refname  from post p, attachment a " +
						 "where p.post_no = a.post_no(+) and  board_no = ? and post_ref_no = 0 order by p.post_no desc ) where rnum >= ? and rnum <= ?";
		try {
		pstmt = con.prepareStatement(query);
		pstmt.setInt(1, boardNo);
		pstmt.setInt(2, startRow);
		pstmt.setInt(3, endRow);
		rset = pstmt.executeQuery();
		if(rset != null){
			plist = new ArrayList<Post>();
			while(rset.next()){
			Post p = new Post();
			p.setPostOrder(rset.getInt("rnum"));
			p.setPostNo(rset.getInt("post_no"));
			p.setPostContents(rset.getString("post_contents"));
			p.setPostName(rset.getString("post_name"));
			p.setPostDate(rset.getDate("post_date"));
			p.setpNo(rset.getInt("pno"));
			p.setfName(rset.getString("fname"));
			p.setRefName(rset.getString("refname"));
			System.out.println(p);
			plist.add(p);	
			}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return plist;
	}

	public int deletePost(Connection con, int post_no, int post_no2) {
		// TODO Auto-generated method stub
		return 0;
	}

	public List<Post> selectPost(Connection con, int post_no, int post_no2) {
		// TODO Auto-generated method stub
		return null;
	}
	public int updatePost(Connection con, Post p) {
		// TODO Auto-generated method stub
		return 0;
	}



	public int insertPost(Connection con, Post p) {
		PreparedStatement pstmt = null;
		String query = prop.getProperty("insertPost");
		int result = 0;

		try {
			pstmt= con.prepareStatement(query);
			pstmt.setString(1, p.getPostName());
			pstmt.setString(2, p.getPostContents());
			pstmt.setInt(3, p.getBoardNo());
			pstmt.setInt(4, p.getpNo());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int getListCount(Connection con, int boardNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int listCount = 0;
		String query = prop.getProperty("getListCount");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, boardNo);
			rset = pstmt.executeQuery();
			if(rset.next())
				listCount = rset.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listCount;
	}
	public int insertComment(Connection con, Post p) {
		PreparedStatement pstmt = null;
		String query = prop.getProperty("insertComment");
		int result = 0;
		try {
		pstmt = con.prepareStatement(query);
		pstmt.setInt(1, 1);
		pstmt.setString(2, p.getPostContents());
		pstmt.setInt(3, p.getBoardNo());
		pstmt.setInt(4, p.getPostRefNo());
		result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result;
	}
	public List<Post> selectTitle(Connection con, int boardNo, String ptitle) {
		List<Post> plist = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = prop.getProperty("selectTitle");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, boardNo);
			pstmt.setString(2, "%" + ptitle + "%");
			rset = pstmt.executeQuery();
			System.out.println("세금소식 dao : " + rset);
			if (rset != null) {
				plist = new ArrayList<Post>();
			}
			while (rset.next()) {
				Post p = new Post();
				p.setPostNo(rset.getInt("post_no"));				
				p.setPostName(rset.getString("post_name"));				
				System.out.println("여기 안 떠?");
				p.setPostDate(rset.getDate("post_date"));
				p.setPostContents(rset.getString("post_contents"));
				p.setBoardNo(rset.getInt("board_no"));
				p.setpNo(rset.getInt("p_no"));
				p.setPostRefNo(rset.getInt("post_ref_no"));
				p.setReadCount(rset.getInt("read_count"));
				plist.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		System.out.println("세금소식 dao : " + boardNo + ", " + plist);
		return plist;
	}

}
