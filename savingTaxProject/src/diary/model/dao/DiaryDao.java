package diary.model.dao;
import diary.model.vo.*;
import static common.JDBCTemplate.*;

import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Properties;
import java.sql.*;

public class DiaryDao {
private Properties prop = new Properties();


	public DiaryDao(){
		try {
			prop.load(new InputStreamReader(this.getClass().getResourceAsStream("diary.properties")));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


	public ArrayList<AccountList> showBillType(Connection con, String btype) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<AccountList> list = null;
		
		String query = "select ano, anm, atype from accountlist where atype=?";
		try {
			pstmt = con.prepareStatement(query);
			System.out.println("dao btype : " + btype);
			pstmt.setString(1, btype);
			rset = pstmt.executeQuery();
			
			
			if(rset != null){
				list = new ArrayList<AccountList>();
			}
			
			while(rset.next()){
				AccountList alist = new AccountList();
				System.out.println(rset.getString("atype"));
				alist.setAno(rset.getInt("ano"));
				alist.setAnm(rset.getString("anm"));
				alist.setAtype(rset.getString("atype"));
				System.out.println(alist);
				list.add(alist);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
}
