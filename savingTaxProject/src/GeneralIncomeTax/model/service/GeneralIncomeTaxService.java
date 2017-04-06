package GeneralIncomeTax.model.service;

import java.sql.Connection;
import java.util.List;

import GeneralIncomeTax.model.dao.GeneralIncomeTaxDao;

import static common.JDBCTemplate.*;
import diary.model.vo.Diary;

public class GeneralIncomeTaxService {

	public List<Diary> selectDlist(int wpno, String year) {
		Connection con = getConnection();
		List<Diary> dlist = new GeneralIncomeTaxDao().selectDlist(con, wpno, year);
		close(con);
		return dlist;
	}

}
