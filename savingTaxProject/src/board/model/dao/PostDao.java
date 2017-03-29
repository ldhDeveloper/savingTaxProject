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
	
public PostDao(){
	try {
		prop.load(new InputStreamReader(this.getClass().getResourceAsStream("post.properties")));
	} catch (IOException e) {
		e.printStackTrace();
	}
}//오전 임성혁 작업
	public List<Post> selectList(Connection con, int limit, int boardNo, int currentPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Post> plist = null;
		int startRow =  (currentPage -1) * limit +1;
		int endRow = startRow + limit -1;
		String query = prop.getProperty("selectList");
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
			p.setPostOrder(rset.getInt(1));
			p.setPostNo(rset.getInt(2));
			p.setPostName(rset.getString(3));
			p.setPostDate(rset.getDate(4));
			p.setpNo(rset.getInt(5));
			plist.add(p);	
			}
		}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		return plist;
	}
	public List<Post> selectTitle(Connection con, String title) {
		// TODO Auto-generated method stub
		return null;
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
	//오전 임성혁작업
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
		}finally{
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
	//오전 임성혁 작업
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

}


