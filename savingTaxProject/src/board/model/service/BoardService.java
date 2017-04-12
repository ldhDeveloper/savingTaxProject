package board.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import board.model.dao.BoardDao;
import board.model.vo.Board;

public class BoardService {
	
	public BoardService(){}

	public List<Board> selectList(int currentPage, int limit) {
		Connection con = getConnection();
		List<Board> blist = new BoardDao().selectList(
				con, currentPage, limit);
		close(con);
		return blist;
	}

	public int getListCount() {
		Connection con = getConnection();
		int listCount = new BoardDao().getListCount(con);
		close(con);
		return listCount;
	}

}







