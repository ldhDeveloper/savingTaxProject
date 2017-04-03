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


	public ArrayList<Diary> DailySearch(String ddate, String pno) {
		Connection con = getConnection();
		ArrayList<Diary> list = new DiaryDao().DailySearch(con, ddate, pno);
		close(con);
		return list;
	}


	public ArrayList<Diary> TermSearch(String sdate, String edate, String pno) {
		Connection con = getConnection();
		ArrayList<Diary> list = new DiaryDao().TermSearch(con, sdate, edate, pno);
		close(con);
		return list;
	}


	public ArrayList<Party> selectDealer() {
		Connection con = getConnection();
		ArrayList<Party> list = new DiaryDao().selectDealer(con);
		close(con);
		return list;
	}


	public ArrayList<Diary> InsertDiary(Diary diary, String indate, String pno) {
		Connection con = getConnection(); 
		ArrayList<Diary> list = null;
		int result= new DiaryDao().InsertDiary(con, diary, indate, pno);
		
		if(result > 0){
			commit(con);
			System.out.println("insert 성공");
			list = new DiaryDao().DailySearch(con, indate, pno);
		} else {
			rollback(con);
		}
		close(con);
		return list;
	}


	public ArrayList<Diary> updateDiary(Diary diary, String indate, String pno) {
		Connection con = getConnection(); 
		ArrayList<Diary> list = null;
		int result= new DiaryDao().UpdateDiary(con, diary, indate, pno);
		
		if(result > 0){
			commit(con);
			System.out.println("update 성공");
			list = new DiaryDao().DailySearch(con, indate, pno);
		} else {
			rollback(con);
		}
		close(con);
		return list;
	}
	
	


}
