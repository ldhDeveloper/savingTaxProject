package diary.model.service;
import diary.model.vo.*;
import member.model.dao.PartyDao;
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


	public ArrayList<Party> selectDealer(int pno) {
		Connection con = getConnection();
		ArrayList<Party> list = new DiaryDao().selectDealer(con, pno);
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


	public ArrayList<Diary> deleteDiary(String[] dnos, String indate, String pno) {
		Connection con = getConnection(); 
		ArrayList<Diary> list = null;
		int result = 0;
		
		for(String dno : dnos){
			result += new DiaryDao().deleteDiary(con, dno);
		}
		
		
		if(result > 0){
			commit(con);
			System.out.println("delete 성공");
			System.out.println(result + "개의 컬럼 삭제");
			list = new DiaryDao().DailySearch(con, indate, pno);
		} else {
			rollback(con);
		}
		close(con);
		return list;
	}
	
	


}
