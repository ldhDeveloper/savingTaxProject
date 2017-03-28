package member.model.server;


import member.model.dao.PartyDao;
import member.model.vo.Member;
import member.model.vo.Party;

import static common.JDBCTemplate.*;
import java.sql.*;

public class PartyService {
	public PartyService(){}

	public Party loginParty(String uid, String upwd) {
		Connection con = getConnection();
		Party p  = new PartyDao().loginParty(con, uid, upwd);
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
/*
	public Member selectMember(String uid) {
		Connection con = getConnection();
		Member m = new MemberDao().selectMember(con, uid);
		
		close(con);
		
		System.out.println("service : " + m);
		
		return m;
	}

	public int updateMember(Member m) {
		Connection con = getConnection();
		
		int result = new MemberDao().updateMember(con, m);
		
		if(result > 0){
			commit(con);
		}
		
		else {
			rollback(con);
		}
		return result;
	}

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
}
