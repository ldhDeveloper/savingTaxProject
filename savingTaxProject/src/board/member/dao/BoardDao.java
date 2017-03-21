package board.member.dao;

import static common.JDBCTemplate.*;

import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.*;
import board.member.vo.*;
import java.util.*;

public class BoardDao {

	private Properties prop;

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

	public Board showContent(Connection con, int postNo) {
		Connection conn = con;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String query = prop.getProperty("showContent");
		Board b = null;
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, postNo);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				b = new Board();
				b.setBoard_no(rset.getInt("board_no"));
				b.setPost_no(rset.getInt("post_no"));
				b.setPost_title(rset.getString("post_title"));
				b.setPost_contents(rset.getString("post_contents"));
				b.setPost_date(rset.getDate("post_date"));
				b.setUp_post_no(rset.getInt("up_post_no"));
				b.setWriter_no(rset.getInt("writer_no"));
			}

		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			close(rset);
			close(pstmt);
		}
		System.out.println(b);
		return b;
	}

	public int deletePost(Connection con, int post_no) {
		Connection conn = con;
		PreparedStatement pstmt = null;
		String query = prop.getProperty("delete");
		int result = 0;
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, post_no);
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		return result;
	}

	public int redactPost(Connection con, int post_no) {
		// TODO Auto-generated method stub
		return 0;
	}

}
