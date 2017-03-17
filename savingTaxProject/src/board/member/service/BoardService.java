package board.member.service;
import static common.JDBCTemplate.*;
import java.io.*;
import java.sql.*;
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
	
public List<Board> SelectAll(){
	Connection con = getConnection();
	Statement stmt = null;
	ResultSet rset = null;
	String query = prop.getProperty("selectAll");
	List<Board> blist = null;
	try {
		stmt = con.createStatement();
		rset = stmt.executeQuery(query);
		 if(rset !=null){
			 blist = new ArrayList<Board>();
			 while(rset.next()){
				 Board board = new Board();
				 //Write the left!
				 blist.add(board);
			 }
		 }
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	return null;
}
	
}
