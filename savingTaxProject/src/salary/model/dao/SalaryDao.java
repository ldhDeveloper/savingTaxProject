package salary.model.dao;

import java.sql.*;
import static common.JDBCTemplate.*;

import salary.model.vo.Salary;

public class SalaryDao {

	public int insertSalary(Connection con, Salary s) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "insert into salary values (seq_sal.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, s.getPno());
			pstmt.setDate(2, s.getWsDate());
			pstmt.setDate(3, s.getWeDate());
			pstmt.setInt(4, s.getInitPay());
			pstmt.setInt(5, s.getBonus());
			pstmt.setInt(6, s.getIncentive());
			pstmt.setInt(7, s.getOverPay());
			pstmt.setInt(8, s.getMeals());
			pstmt.setInt(9, s.getChildPay());
			pstmt.setInt(10, s.getCarPay());
			pstmt.setInt(11, s.getExp());
			pstmt.setDate(12, s.getSalDate());
			pstmt.setInt(13, s.getRestPay());
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertDiarySalary(Connection con, int pno, Date salDate, int realSalary) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "insert into diary values(seq_diary.nextval, ?, (select pname from party where pno = ?), ?, '계좌이체', '이체내역', (select busi_pno from party_rel where rel_pno = ?), ?, (select ano from accountlist where anm='급여'))";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setDate(1, salDate);
			pstmt.setInt(2, pno);
			pstmt.setInt(3, realSalary);
			pstmt.setInt(4, pno);
			pstmt.setInt(5, pno);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

}
