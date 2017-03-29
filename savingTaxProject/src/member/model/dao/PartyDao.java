package member.model.dao;

import static common.JDBCTemplate.*;
import java.sql.*;
import java.util.*;
import member.model.vo.Member;
import member.model.vo.Party;

public class PartyDao {
	private Properties prop;

	public PartyDao() {
		prop = new Properties();
	}

	public Party loginParty(Connection con, String uid, String upwd) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Party p = null;

		String query = "select pno, pname, category, id, pwd, ENCRYPTION_AES.DEC_AES(email) as email "
				+ "from party where id = ? and pwd = ENCRYPTION_AES.ENC_AES(?)";

		try {
			pstmt = con.prepareStatement(query);

			pstmt.setString(1, uid);
			pstmt.setString(2, upwd);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				p = new Party();
				p.setPno(rset.getInt("pno"));
				p.setPname(rset.getString("pname"));
				p.setCategory(rset.getInt("category"));
				p.setId(rset.getString("id"));
				p.setPwd(rset.getString("pwd"));
				p.setEmail(rset.getString("email"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		/*
		 * System.out.println("uid : " + uid); System.out.println("upwd : " +
		 * upwd); System.out.println(m); System.out.println("dao작동");
		 */
		return p;
	}

	public int signupParty(Connection con, Party p) {
		PreparedStatement pstmt = null;
		int result = 0;
		System.out.println(p);

		String query = "insert into party(pno, category, pname, id, pwd, email) values (pno_seq.nextval, 1, ?, ?, ENCRYPTION_AES.ENC_AES(?), ENCRYPTION_AES.ENC_AES(?))";

		try {
			pstmt = con.prepareStatement(query);

			pstmt.setString(1, p.getPname());
			pstmt.setString(2, p.getId());
			pstmt.setString(3, p.getPwd());
			pstmt.setString(4, p.getEmail());

			result = pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		// System.out.println("user name: " + m.getUserName());
		// System.out.println(result);
		return result;
	}

	public Member selectMember(Connection con, String uid) {
		Member m = null;

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select * from signup where user_id = ?";

		try {
			pstmt = con.prepareStatement(query);

			pstmt.setString(1, uid);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				m = new Member();

				m.setUserName(rset.getString("user_name"));
				m.setUserId(rset.getString("user_id"));
				m.setUserPwd(rset.getString("user_pwd"));
				m.setUserEmail(rset.getString("user_email"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		System.out.println("dao m: " + m + "dao userid" + uid);

		return m;
	}

	public int updatePartyMyinfo1(Connection con, Party p) {
		int result = 0;
		PreparedStatement pstmt = null;

		String query = "update party set pname=?, id=ENCRYPTION_AES.ENC_AES(?), pwd=ENCRYPTION_AES.ENC_AES(?), phone=ENCRYPTION_AES.ENC_AES(?), email=ENCRYPTION_AES.ENC_AES(?), id_no =ENCRYPTION_AES.ENC_AES(?), paddress=?, tel=?,  gender=?, birth=? ";

		try {
			pstmt = con.prepareStatement(query);
            pstmt.setString(1, p.getPname());
            pstmt.setString(2, p.getId_no());
            pstmt.setString(3, p.getId());
            pstmt.setString(4, p.getPwd());
            pstmt.setString(5, p.getPaddress());
            pstmt.setString(6, p.getTel());
            pstmt.setString(7, p.getPhone());
            pstmt.setString(8, p.getEmail());
            pstmt.setString(9, p.getGender());
            pstmt.setString(10, p.getBirth());
            
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		return result;
	}
	
	public int updatePartyMyinfo2(Connection con, Party p) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public int updateMyinfo3(Connection con, Party p) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteMember(Connection con, String uid) {
		Member m = null;
		int result = 0;
		PreparedStatement pstmt = null;

		String query = "delete from member where user_id = ?";

		try {
			pstmt = con.prepareStatement(query);

			pstmt.setString(1, uid);

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public boolean userIdCheck(Connection con, String chkId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		boolean result = false;
		String query = "select pno from party where id = ?";

		try {
			pstmt = con.prepareStatement(query);

			pstmt.setString(1, chkId);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				result = false;
			} else {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return result;
	}
}
