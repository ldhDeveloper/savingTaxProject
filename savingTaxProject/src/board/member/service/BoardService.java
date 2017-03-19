package board.member.service;
import static common.JDBCTemplate.*;
import java.io.*;
import java.sql.*;

import board.member.dao.BoardDao;
import board.member.vo.*;
import java.util.*;
public class BoardService {
	
	public BoardService(){
	
	}
	
public List<Board> selectAll(){
	Connection con = getConnection();
	List<Board> blist = new BoardDao().selectAll(con );
	
	close(con);
	return blist;
}
public List<Board> selectTitle(String title){
	Connection con = getConnection();
	List<Board> blist = new BoardDao().selectTitle(con, title );
	close(con);
	return blist;
	
}
}
