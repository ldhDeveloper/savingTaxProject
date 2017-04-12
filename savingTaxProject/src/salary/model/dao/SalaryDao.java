package salary.model.dao;

import java.sql.*;

import member.model.vo.Party;

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

	public int insertDiarySalary(Connection con, int pno, Salary s, int realSalary) {
		PreparedStatement pstmt = null;
		int result = 0;
	
		
		
		String query = "insert into diary values(seq_diary.nextval, ?, (select pname from party where pno = ?), ?, '계좌이체', '이체내역', (select busi_pno from party_rel where rel_pno = ?), ?, (select ano from accountlist where anm='급여'), ?)";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setDate(1, s.getSalDate());
			pstmt.setInt(2, pno);
			pstmt.setInt(3, realSalary);
			pstmt.setInt(4, pno);
			pstmt.setInt(5, pno);
			pstmt.setInt(6, s.getSno());

			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}

	public Salary findUseSno(Connection con, int sno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Salary s = null;
		
		String query = "select sno, pno, wsdate, wedate, init_pay, bonus, incentive, over_pay, meals, child_pay, car_pay, exp, saldate, rest_pay from salary where sno=?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, sno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()){
				s = new Salary();
				
				s.setSno(rset.getInt("sno"));
				s.setPno(rset.getInt("pno"));
				s.setWsDate(rset.getDate("wsdate"));
				s.setWeDate(rset.getDate("wedate"));
				s.setInitPay(rset.getInt("init_pay"));
				s.setBonus(rset.getInt("bonus"));
				s.setIncentive(rset.getInt("incentive"));
				s.setOverPay(rset.getInt("over_pay"));
				s.setMeals(rset.getInt("meals"));
				s.setChildPay(rset.getInt("child_pay"));
				s.setCarPay(rset.getInt("car_pay"));
				s.setExp(rset.getInt("exp"));
				s.setSalDate(rset.getDate("saldate"));
				s.setRestPay(rset.getInt("rest_pay"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		return s;
	}

	public Party findUsePno(Connection con, int pno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Party p = null;
		
		String query = "select pname, email, ENCRYPTION_AES.DEC_AES(id_no) as id_no, position, emp_type, phone from party where pno = ?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()){
				p = new Party();
				
				p.setPname(rset.getString("pname"));
				p.setEmail(rset.getString("email"));
				p.setId_no(rset.getString("id_no"));
				p.setPosition(rset.getString("position"));
				p.setEmp_type(rset.getString("emp_type"));
				p.setPhone(rset.getString("phone"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		
		return p;
	}

	public int selectSno(Connection con, Salary s) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int sno = 0;
		
		String query = "select sno from salary where pno = ? and saldate = ?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, s.getPno());
			pstmt.setDate(2, s.getSalDate());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()){
				sno = rset.getInt("sno");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		
		return sno;
	}

	public int deleteSalary(Connection con, Salary s) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "delete from salary where sno = ?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, s.getSno());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int updateSalary(Connection con, Salary s) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "update salary set wsdate = ?, wedate = ?, init_pay = ?, bonus = ?, incentive = ?, "
				+ "over_pay = ?, meals = ?, child_pay = ?, car_pay = ?, exp = ?, saldate = ?, rest_pay = ? where sno = ?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setDate(1, s.getWsDate());
			pstmt.setDate(2, s.getWeDate());
			pstmt.setInt(3, s.getInitPay());
			pstmt.setInt(4, s.getBonus());
			pstmt.setInt(5, s.getIncentive());
			pstmt.setInt(6, s.getOverPay());
			pstmt.setInt(7, s.getMeals());
			pstmt.setInt(8, s.getChildPay());
			pstmt.setInt(9, s.getCarPay());
			pstmt.setInt(10, s.getExp());
			pstmt.setDate(11, s.getSalDate());
			pstmt.setInt(12, s.getRestPay());
			pstmt.setInt(13, s.getSno());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
		
		return result;
	}

	public int updateDiarySalary(Connection con, Salary s, int realSalary) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "update diary set ddate = ?, cost = ? where sno = ? ";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setDate(1, s.getSalDate());
			pstmt.setInt(2, realSalary);
			pstmt.setInt(3, s.getSno());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return result;
	}

}
