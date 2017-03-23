package member.view.server;

import member.view.dao.MemberDao;
import member.view.vo.Member;
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

	public int signupMember(Member m) {
		Connection con = getConnection();
		int result = new MemberDao().signupMember(con, m);
		
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
