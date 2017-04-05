package tax.model.service;

import tax.model.dao.VatDao;
import tax.model.vo.Vat;
import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import diary.model.vo.Diary;


public class VatService {

	
	public List<Diary> selectVat(int write_pno, int month) {
		Connection con = getConnection();
		List<Diary> vlist = new VatDao().selectVat(con, write_pno, month);
		return vlist;
	}

}
