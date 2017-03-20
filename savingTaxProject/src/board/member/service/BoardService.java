package board.member.service;
import static common.JDBCTemplate.*;
import java.io.*;
import java.sql.*;

import board.member.dao.BoardDao;
import board.member.vo.*;
import java.util.*;
public class BoardService {
	Properties prop = null;
	public BoardService(){
		
	prop = 	new Properties();
	try {
		prop.load(new InputStreamReader(this.getClass().getResourceAsStream("board.properties")));
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	
public List<Board> selectAll(){
	Connection con = getConnection();
	List<Board> list = new BoardDao().selectAll(con);
	return null;
}

public int insertBoard(Board b) {
	Connection con = getConnection();
	
	return 0;
}
	
}
