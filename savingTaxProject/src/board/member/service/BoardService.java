package board.member.service;

import static common.JDBCTemplate.*;
import java.io.*;
import java.sql.*;

import board.member.dao.BoardDao;
import board.member.vo.*;
import java.util.*;

public class BoardService {

	public BoardService() {

	}

	public List<Board> selectAll() {
		Connection con = getConnection();
		List<Board> blist = new BoardDao().selectAll(con);

		close(con);
		return blist;
	}

	public List<Board> selectTitle(String title) {
		Connection con = getConnection();
		List<Board> blist = new BoardDao().selectTitle(con, title);
		close(con);
		return blist;

	}

	public Board showContent(int postNo) {
		Connection con = getConnection();
		Board b = new BoardDao().showContent(con, postNo);
		close(con);
		return b;
	}

	public int deletePost(int post_no) {
		Connection con = getConnection();
		int result = new BoardDao().deletePost(con, post_no);
		if(result > 0)
			commit(con);
		else
			rollback(con);
		close(con);
		return result;
	}

}
