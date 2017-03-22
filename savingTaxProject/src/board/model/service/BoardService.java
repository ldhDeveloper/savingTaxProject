package board.model.service;

import static common.JDBCTemplate.*;

import java.io.*;
import java.sql.*;

import board.model.dao.BoardDao;
import board.model.vo.*;
import java.util.*;

public class BoardService {
//
	public BoardService() {

	}

	public List<Board> selectAll(int currentPage, int limit, int board_no) {
		Connection con = getConnection();
		List<Board> blist = new BoardDao().selectAll(con, limit, board_no, currentPage);
		close(con);
		return blist;
	}

	public List<Board> selectTitle(String title) {
		Connection con = getConnection();
		List<Board> blist = new BoardDao().selectTitle(con, title);
		close(con);
		return blist;

	}

	public int deletePost(int board_no, int post_no) {
		Connection con = getConnection();
		int result = new BoardDao().deletePost(con, board_no, post_no);
		if(result > 0)
			commit(con);
		else
			rollback(con);
		close(con);
		return result;
	}

	public List<Board> selectPost(int board_no, int post_no) {
		Connection con = getConnection();
		List<Board> bList = new BoardDao().selectPost(con, board_no, post_no);
		close(con);
		return bList;
	}

	public int updatePost(Board b) {
		Connection con = getConnection();
		int result = new BoardDao().updatePost(con, b);
		if(result > 0)
			commit(con);
		else
			rollback(con);
		close(con);
		return result;
	}

	public int InsertPost(Board b) {
		Connection con = getConnection();
		int result = new BoardDao().insertPost(con, b);
		if(result >0)
			commit(con);
		else
			rollback(con);
		return result;
	}

	public int getListCount(int board_no) {
		Connection con = getConnection();
		int listCount = new BoardDao().getListCount(con, board_no);
		close(con);
		return listCount;
	}

}
