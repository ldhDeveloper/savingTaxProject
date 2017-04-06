package GeneralIncomeTax.model.dao;


import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import diary.model.vo.Diary;

public class GeneralIncomeTaxDao {

	public int[] getTotalIncome(Connection con, int wpno, int gyear) {
		int[] income = {0, 0, 0, 0, 0};
		PreparedStatement pstmt1 = null;
		ResultSet rset1 = null;
		
		PreparedStatement pstmt2 = null;
		ResultSet rset2 = null;
		
		PreparedStatement pstmt3 = null;
		ResultSet rset3 = null;
		
		PreparedStatement pstmt4 = null;
		ResultSet rset4 = null;
		
		PreparedStatement pstmt5 = null;
		ResultSet rset5 = null;
		
		String query1 = "select write_pno, sum(cost) from diary where ano = 51 and extract(year from ddate) = ? and write_pno = ? group by write_pno";
		
		String query2 = "select write_pno, sum(cost) from diary where ano in (61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 81, 82, 83) and extract(year from ddate) = ? and write_pno = ? group by write_pno";
		
		String query3 = "select write_pno, sum(cost) from diary where ano = 52 and extract(year from ddate) = ? and write_pno = ? group by write_pno";
		
		String query4 = "select write_pno, sum(cost) from diary where ano = 53 and extract(year from ddate) = ? and write_pno = ? group by write_pno";
		
		String query5 = "select write_pno, sum(cost) from diary where ano = 54 and extract(year from ddate) = ? and write_pno = ? group by write_pno";
		
		try {
			pstmt1 = con.prepareStatement(query1);
			
			pstmt1.setInt(1, gyear);
			pstmt1.setInt(2, wpno);
			
			
			rset1 = pstmt1.executeQuery();
			
			if(rset1.next()){
				income[0] = rset1.getInt("sum(cost)");
			}
			
			
			pstmt2 = con.prepareStatement(query2);
			
			pstmt2.setInt(1, gyear);
			pstmt2.setInt(2, wpno);
			
			rset2 = pstmt2.executeQuery();
			
			if(rset2.next()){
				income[1] = rset2.getInt("sum(cost)");
			}
			
			
			pstmt3 = con.prepareStatement(query1);
			
			pstmt3.setInt(1, gyear);
			pstmt3.setInt(2, wpno);
			
			
			rset3 = pstmt3.executeQuery();
			
			if(rset3.next()){
				income[2] = rset3.getInt("sum(cost)");
			}
			
			
			pstmt4 = con.prepareStatement(query2);
			
			pstmt4.setInt(1, gyear);
			pstmt4.setInt(2, wpno);
			
			rset4 = pstmt4.executeQuery();
			
			if(rset4.next()){
				income[3] = rset4.getInt("sum(cost)");
			}
			
			pstmt5 = con.prepareStatement(query1);
			
			pstmt5.setInt(1, gyear);
			pstmt5.setInt(2, wpno);
			
			
			rset5 = pstmt5.executeQuery();
			
			if(rset5.next()){
				income[4] = rset5.getInt("sum(cost)");
			}					
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset1);
			close(pstmt1);
			close(rset2);
			close(pstmt2);
		}		
		return income;
	}
}
