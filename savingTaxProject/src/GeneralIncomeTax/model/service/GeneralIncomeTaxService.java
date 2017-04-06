package GeneralIncomeTax.model.service;

import java.sql.Connection;
import java.sql.Date;
import java.util.List;

import GeneralIncomeTax.model.dao.GeneralIncomeTaxDao;

import static common.JDBCTemplate.*;
import diary.model.vo.Diary;

public class GeneralIncomeTaxService {

	public int[] getTotalIncome(int wpno, int gyear) {
		Connection con = getConnection();
		int[] income = new GeneralIncomeTaxDao().getTotalIncome(con, wpno, gyear);
		close(con);
		return income;
	}
}