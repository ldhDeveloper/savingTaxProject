package salary.model.service;

import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;

import salary.model.dao.SalaryDao;
import salary.model.vo.Salary;

public class SalaryService {

	public int insertSalary(int pno, Salary s, int realSalary) {
		Connection con = getConnection();
		int result = 0;
		
		int result1 = new SalaryDao().insertSalary(con, s);
		
		int result2 = 0;
		if(result1 > 0){
			result2 = new SalaryDao().insertDiarySalary(con, pno, s.getSalDate(), realSalary);
		}else{
			rollback(con);
		}
		
		if(result2 > 0){
			commit(con);
			result = 1;
		}else{
			rollback(con);
			result = 0;
		}
		
		return result;
	}

}
