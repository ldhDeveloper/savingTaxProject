package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import board.model.dao.PostDao;
import board.model.vo.Post;

public class PostService {

	public List<Post> selectAll(int currentPage, int limit, int post_no) {
		Connection con = getConnection();
		List<Post> blist = new PostDao().selectList(con, limit, post_no, currentPage);
		close(con);
		return blist;
	}

	public List<Post> selectTitle(String title) {
		Connection con = getConnection();
		
		List<Post> blist = new PostDao().selectTitle(con, title);
		close(con);
		return blist;

	}

	public int deletePost(int Post_no, int post_no) {
		Connection con = getConnection();
		int result = new PostDao().deletePost(con, Post_no, post_no);
		if(result > 0)
			commit(con);
		else
			rollback(con);
		close(con);
		return result;
	}

	public List<Post> selectPost(int Post_no, int post_no) {
		Connection con = getConnection();
		List<Post> pList = new PostDao().selectPost(con, Post_no, post_no);
		close(con);
		return pList;
	}

	public int updatePost(Post p) {
		Connection con = getConnection();
		int result = new PostDao().updatePost(con, p);
		if(result > 0)
			commit(con);
		else
			rollback(con);
		close(con);
		return result;
	}

	public int InsertPost(Post p) {
		Connection con = getConnection();
		int result = new PostDao().insertPost(con, p);
		if(result >0)
			commit(con);
		else
			rollback(con);
		return result;
	}

	public int getListCount(int Post_no) {
		Connection con = getConnection();
		int listCount = new PostDao().getListCount(con, Post_no);
		close(con);
		return listCount;
	}

}
