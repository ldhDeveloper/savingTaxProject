package member.model.server;


import member.model.dao.PartyDao;
import member.model.vo.Member;
import member.model.vo.Party;

import static common.JDBCTemplate.*;
import java.sql.*;

public class PartyService {
	public PartyService(){}

	public Party loginParty(String uid, String pwd) {
		Connection con = getConnection();
		Party p  = new PartyDao().loginParty(con, uid, pwd);
		close(con);
		
		//System.out.println("service 작동");
		return p;
	}

	public int signupParty(Party p) {
		Connection con = getConnection();
		int result = new PartyDao().signupParty(con, p);
		
		if(result > 0)
			commit(con);
		else
			rollback(con);
		
		close(con);
		
		//System.out.println("service 작동");
		return result;
	}

	public int updatePartyMyinfo(Party p) {
		Connection con = getConnection();
		PartyDao pdao = new PartyDao();
		int result = pdao.updatePartyMyinfo1(con, p);
		int result2 = pdao.updatePartyMyinfo2(con, p);
		if(result > 0 && result2 >0){
			commit(con);
		}
		else {
			rollback(con);
		}
		return result;
	}
	
	public int insertPartyMyinfo3(Party p){
		Connection con = getConnection();
		int result = new PartyDao().insertMyinfo3(con, p);
		if(result > 0){
			commit(con);
		}
		else {
			rollback(con);
		}
		return result;
	}
	/*
	public int deleteMember(String uid) {
		Connection con = getConnection();
		int result = new MemberDao().deleteMember(con, uid);
		
		close(con);
		
		return result;
	}*/


	public boolean userIdCheck(String chkId) {
		Connection con = getConnection();
		boolean result = new PartyDao().userIdCheck(con, chkId);
		close(con);
		
		//System.out.println("service 작동");
		return result;
	}


	public Party selectParty(String userid) {
		Connection con = getConnection();
		Party p = new PartyDao().selectParty(con, userid);
		close(con);
		return p;
	}

	public Party findId(String pname, String email) {
		Connection con = getConnection();
		Party p = new PartyDao().findId(con, pname, email);
		return p;
	}

	public Party resetPwdCheck(String userid, String email) {
		Connection con = getConnection();
		Party p = new PartyDao().resetPwdCheck(con, userid, email);
		//System.out.println(p);
		return p;
	}

	public int updatePwd(String userid, String pwd) {
		Connection con = getConnection();
		int result = new PartyDao().updatePwd(con, userid, pwd);
		
		if(result > 0){
			commit(con);
		}else{
			rollback(con);
		}
		
		return result;
	}

}

