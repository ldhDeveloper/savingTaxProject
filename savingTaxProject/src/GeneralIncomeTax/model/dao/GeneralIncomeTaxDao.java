package GeneralIncomeTax.model.dao;

import java.sql.*;
import java.util.*;
import diary.model.vo.Diary;

public class GeneralIncomeTaxDao {

	public List<Diary> selectDlist(Connection con, int wpno, String year) {
		List<Diary> dlist = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select ddate, cost, write_pno, d.ano, atype from diary d join accountlist a on (d.ano = a.ano) where write_pno = ? and atype = '수익'";
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, wpno);
			
			pstmt.executeQuery();
			
			if(rset.next()){
				dlist = new ArrayList<Diary>();
			}
		} catch (Exception e) {
			
		}
		
		
		return dlist;
	}

}
