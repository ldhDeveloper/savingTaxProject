package notice.model.dao;

import java.io.*;
import java.sql.*;
import java.util.*;

import notice.model.vo.Notice;

public class NoticeDao {
	private Properties prop;
	
	public NoticeDao(){
		prop = new Properties();
		
		try {
			prop.load(new InputStreamReader(this.getClass().getResourceAsStream("notice.properties")));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public List<Notice> selectAll(Connection con) {
		List<Notice> nlist = null;
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = prop.getProperty("selectAll");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset != null){
				nlist = new ArrayList<Notice>();
			}
			
			while(rset.next()){
				Notice n = new Notice();
				
				n.setNoticeNo(rset.getInt("notice_no"));
				n.setNoticeTitle(rset.getString("notice_title"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nlist;
	}

}
