package tax.model.service;

import tax.model.dao.VatDao;
import tax.model.vo.Vat;
import static common.JDBCTemplate.*;

import java.sql.Connection;


public class VatService {

	
	public Vat selectVat(int write_pno) {
		Connection con = getConnection();
		Vat v = new VatDao().selectVat(con, write_pno);
		return v;
	}

}
