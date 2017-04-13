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

	public List<Post> selectList(int currentPage, int limit, int boardNo) {
		Connection con = getConnection();
		List<Post> plist = new PostDao().selectList(con, limit, boardNo, currentPage);
		System.out.println("service:"+limit+","+boardNo+","+currentPage);
		close(con);
		return plist;
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

	public int insertPost(Post p) {
		Connection con = getConnection();
		int result = new PostDao().insertPost(con, p);
		if(result >0)
			commit(con);
		else
			rollback(con);
		close(con);
		return result;
	}

	public int getListCount(int boardNo) {
		Connection con = getConnection();
		int listCount = new PostDao().getListCount(con, boardNo);
		close(con);
		return listCount;
	}


	public int insertComment(Post p) {
		Connection con = getConnection();
		int result = new PostDao().insertComment(con, p);
		if(result > 0)
			commit(con);
		else
			rollback(con);
		close(con);
		return result;
	}
	
	// 게시판 검색
	public List<Post> selectTitle(int boardNo, String ptitle) {
		Connection con = getConnection();
		List<Post> plist = new PostDao().selectTitle(con, boardNo, ptitle);
		close(con);
	
		return plist;
	}

	public Post selectPostNo(int postNo) {
		Connection con = getConnection();
		Post p = new PostDao().selectPostNo(con, postNo);
		close(con);
		return p;
	}

	public List<Post> selectCommentList(int postNo) {
		Connection con = getConnection();
		List<Post> commentList = new PostDao().selectCommentList(con, postNo);
		
		return commentList;
	}

	public void addListCount(int postNo) {
		Connection con = getConnection();
		int result = new PostDao().addReadCount(con, postNo);
		
		if(result >0)
			commit(con);
		else
		rollback(con);
	}

	public int deletePost(int postNo) {
		Connection con = getConnection();
		int result = new PostDao().deletePost(con, postNo);
		
		if(result >0)
			commit(con);
		else
			rollback(con);
		return result;
	}


}
