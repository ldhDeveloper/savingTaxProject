package member.model.server;

import member.model.dao.MemberDao;
import member.model.vo.Member;
import member.model.vo.Party;

import static common.JDBCTemplate.*;
import java.sql.*;

public class MemberService {
	public MemberService(){}

	public Member loginMember(String uid, String upwd) {
		Connection con = getConnection();
		Member m = new MemberDao().loginMember(con, uid, upwd);
		
		close(con);
		
		//System.out.println("service 작동");
		return m;
	}

	public int signupMember(Party p) {
		Connection con = getConnection();
		int result = new MemberDao().signupMember(con, p);
		
		if(result > 0)
			commit(con);
		else
			rollback(con);
		
		close(con);
		
		//System.out.println("service 작동");
		return result;
	}

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
	}
}
