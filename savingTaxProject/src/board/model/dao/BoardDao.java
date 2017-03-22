package board.model.dao;

import static common.JDBCTemplate.*;


import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.*;
import board.model.vo.*;
import java.util.*;

public class BoardDao {

	private Properties prop;
//
	public BoardDao() {
		prop = new Properties();
		try {
			prop.load(new InputStreamReader(this.getClass().getResourceAsStream("board.properties")));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public List<Board> selectAll(Connection con) {
		Connection conn = con;
		Statement stmt = null;
		ResultSet rset = null;
		List<Board> blist = null;
		String query = prop.getProperty("selectAll");
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			if (rset != null) {
				blist = new ArrayList<Board>();
				while (rset.next()) {
					Board b = new Board();
					b.setPost_no(rset.getInt("post_no"));
					b.setPost_title(rset.getString("post_title"));
					b.setPost_contents(rset.getString("post_contents"));
					b.setPost_date(rset.getDate("post_date"));
					b.setBoard_no(rset.getInt("board_no"));
					b.setUp_post_no(rset.getInt("up_post_no"));
					b.setWriter_no(rset.getInt("writer_no"));
					blist.add(b);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return blist;
	}
	
	public List<Board> selectTitle(Connection con, String title) {
		Connection conn = con;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Board> blist = null;
		String query = prop.getProperty("selectTitle");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, title);
			rset = pstmt.executeQuery(query);
			if (rset != null) {
				blist = new ArrayList<Board>();
				while (rset.next()) {
					Board b = new Board();
					b.setPost_no(rset.getInt("post_no"));
					b.setPost_title(rset.getString("post_title"));
					b.setPost_contents(rset.getString("post_contents"));
					b.setPost_date(rset.getDate("post_date"));
					b.setBoard_no(rset.getInt("board_no"));
					b.setUp_post_no(rset.getInt("up_post_no"));
					b.setWriter_no(rset.getInt("writer_no"));
					blist.add(b);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return blist;
	}
	
	public int deletePost(Connection con, int board_no, int post_no) {
		Connection conn = con;
		PreparedStatement pstmt = null;
		String query = prop.getProperty("delete");
		int result = 0;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, board_no);
			pstmt.setInt(2, post_no);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result;
	}
	
	public Board selectPost(Connection con, int board_no, int post_no) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = prop.getProperty("selectPost");
		Board b = null;
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, board_no);
			pstmt.setInt(2, post_no);
			rset = pstmt.executeQuery();
			if(rset.next()){
				b= new Board(rset.getInt(1), rset.getString(2), rset.getString(3), rset.getDate(4), rset.getInt(5),
						rset.getInt(6), rset.getInt(7));
			}	
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		return b;
	}
	
	public int updatePost(Connection con, Board b) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("updatePost");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, b.getPost_title());
			pstmt.setString(2, b.getPost_contents());
			pstmt.setInt(3, b.getBoard_no());
			pstmt.setInt(4, b.getPost_no());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result;
	}
	
	public int insertPost(Connection con, Board b) {
		PreparedStatement pstmt = null;
		String query = prop.getProperty("insertPost");
		int result = 0;
		try {
			pstmt= con.prepareStatement(query);
			pstmt.setString(1, b.getPost_title());
			pstmt.setString(2, b.getPost_contents());
			pstmt.setInt(3, b.getBoard_no());
			pstmt.setInt(4, b.getUp_post_no());
			pstmt.setInt(5, b.getWriter_no());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result;
	}

	public int getListCount(Connection con, int board_no) {
		PreparedStatement pstmt = null;
		int listCount = 0;
		String query = prop.getProperty("selectBoard");
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		
		return 0;
	}
}
