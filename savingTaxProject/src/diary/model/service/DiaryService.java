package diary.model.service;
import diary.model.vo.*;
import diary.model.dao.*;
import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

public class DiaryService {
		
	public DiaryService(){}


	public ArrayList<AccountList> showBillType(String btype) {
		Connection con = getConnection();
		ArrayList<AccountList> list = new DiaryDao().showBillType(con, btype);
		close(con);
		return list;
	}
	
	


}
