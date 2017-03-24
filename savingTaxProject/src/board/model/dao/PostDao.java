package board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import static common.JDBCTemplate.*;
import board.model.vo.Post;

public class PostDao {

	public List<Post> selectList(Connection con, int limit, int post_no, int currentPage) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Post> list = null;
		int startRow =  (currentPage -1) * limit +1;
		int endRow = startRow + limit -1;
		try {
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		return null;
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

	public int insertPost(Connection con, Post p) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int getListCount(Connection con, int post_no) {
		// TODO Auto-generated method stub
		return 0;
	}

}
