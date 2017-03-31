package diary.model.service;
import diary.model.vo.*;
import member.model.vo.Party;
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


	public ArrayList<Diary> DailySearch(String ddate) {
		Connection con = getConnection();
		ArrayList<Diary> list = new DiaryDao().DailySearch(con, ddate);
		close(con);
		return list;
	}


	public ArrayList<Diary> TermSearch(String sdate, String edate) {
		Connection con = getConnection();
		ArrayList<Diary> list = new DiaryDao().TermSearch(con, sdate, edate);
		close(con);
		return list;
	}


	public ArrayList<Party> selectDealer() {
		Connection con = getConnection();
		ArrayList<Party> list = new DiaryDao().selectDealer(con);
		close(con);
		return list;
	}
	
	


}
