package member.model.server;

import member.model.dao.PartyDao;
import member.model.vo.Member;
import member.model.vo.Party;

import static common.JDBCTemplate.*;
import java.sql.*;
import java.util.ArrayList;

public class PartyService {
	public PartyService() {
	}

	public Party loginParty(String uid, String pwd) {
		Connection con = getConnection();
		Party p = new PartyDao().loginParty(con, uid, pwd);
		close(con);

		// System.out.println("service 작동");
		return p;
	}

	public int signupParty(Party p) {
		Connection con = getConnection();
		int result = new PartyDao().signupParty(con, p);

		if (result > 0)
			commit(con);
		else
			rollback(con);

		close(con);

		// System.out.println("service 작동");
		return result;
	}

	public int updatePartyMyinfo(Party p) {
		Connection con = getConnection();
		PartyDao pdao = new PartyDao();
		int result = pdao.updatePartyMyinfo1(con, p);
		int result2 = pdao.updatePartyMyinfo2(con, p);
		if (result > 0 && result2 > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		return result;
	}

	public int insertPartyMyinfo3(Party p, int owner) {
		Connection con = getConnection();
		int pno=0;
		int result2=0;
		
		int result = new PartyDao().insertMyinfo3(con, p);

		if(result>0){
		   pno= new PartyDao().selectPno(con, p);
		   System.out.println("result pno: "+pno);
		   if(pno>0){
			    result2 = new PartyDao().insertParty_Rel(con, owner, pno);
		   }
		}
		
		if (result > 0 && result2 >0) {
			commit(con);
			result = 1;
		} else {
			rollback(con);
			result = 0;
		}
		return result;
	}

	public boolean userIdCheck(String chkId) {
		Connection con = getConnection();
		boolean result = new PartyDao().userIdCheck(con, chkId);
		close(con);

		// System.out.println("service 작동");
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
		// System.out.println(p);
		return p;
	}

	public int deleteMember(String userid) {
		Connection con = getConnection();
		int result = new PartyDao().deleteMember(con, userid);

		if (result > 0) {
			commit(con);
		} else {
			rollback(con);
		}

		return result;
	}
	
	public int updatePwd(String userid, String pwd) {
		Connection con = getConnection();
		int result = new PartyDao().updatePwd(con, userid, pwd);

		if (result > 0) {
			commit(con);
		} else {
			rollback(con);
		}

		return result;
	}


	// myinfo3 list 불러옴
	public ArrayList<Party> selectList(int owner, int pno) {
		Connection con = getConnection();
		ArrayList<Party> list = new PartyDao().selectList(con, owner, pno);
		close(con);
		return list;
	}

	public int insertEmp(Party p, int owner) {
		Connection con = getConnection();
		int result = 0;
		int pno = 0;
		int result2 = 0;
		
		int result1 = new PartyDao().insertEmp(con, p);
		
		if(result1 > 0){
			pno = new PartyDao().selectPno2(con, p);
			if(pno != 0){
				result2 = new PartyDao().insertEmpRel(con, owner, pno);
			}
		}
		
		if(result1 > 0 && result2 > 0){
			commit(con);
			result = 1;
		}
		else {
			rollback(con);
			result = 0;
		}
		
		return result;
	}

	public ArrayList<Party> selectEmpList(int pno) {
		Connection con = getConnection();
		ArrayList<Party> emplist = new PartyDao().selectEmpList(con, pno);
		return emplist;
	}
	
}
