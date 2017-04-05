package tax.model.service;

import tax.model.dao.VatDao;
import tax.model.vo.Vat;
import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import diary.model.vo.Diary;


public class VatService {

	
	public List<Diary> selectVlist(int write_pno, int month, String taxType) {
		Connection con = getConnection();
		List<Diary> vlist = new VatDao().selectVlist(con, write_pno, month, taxType);
		return vlist;
	}


}
