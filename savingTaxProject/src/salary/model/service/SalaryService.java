package salary.model.service;

import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import member.model.vo.Party;
import salary.model.dao.SalaryDao;
import salary.model.vo.Salary;

public class SalaryService {

	public int insertSalary(int pno, Salary s, int realSalary) {
		Connection con = getConnection();
		int result = 0;
		int result2 = 0;
		
		int result1 = new SalaryDao().insertSalary(con, s);
		commit(con);
		
		int sno = new SalaryDao().selectSno(con, s);
		s.setSno(sno);
		
		if(result1 > 0){
			result2 = new SalaryDao().insertDiarySalary(con, pno, s, realSalary);
			if(result2 > 0){
				commit(con);
				result = 1;
			}else{
				int delete = new SalaryDao().deleteSalary(con, s);			
				if(delete > 0){
					commit(con);
				}
				result = 0;
			}
		}else{
			rollback(con);
		}
	
		
		return result;
	}

	public Salary findUseSno(int sno) {
		Connection con = getConnection();
		Salary s = new SalaryDao().findUseSno(con, sno);
		
		return s;
	}

	public Party findUsePno(int pno) {
		Connection con = getConnection();
		Party p = new SalaryDao().findUsePno(con, pno);
		
		return p;
	}

	public int updateSalary(int pno, Salary s, int realSalary) {
		Connection con = getConnection();
		int result = 0;
		
		int result1 = new SalaryDao().updateSalary(con, s);
		System.out.println("result1:" + result1);
		int result2 = 0;
		
		if(result1 > 0){
			result2 = new SalaryDao().updateDiarySalary(con, s, realSalary);
			System.out.println("result2:" + result2);
			if(result2 > 0){
				commit(con);
				result = 1;
			}else{
				rollback(con);
				result = 0;
			}
		}else{
			rollback(con);
		}
		
		return result;
	}

}
