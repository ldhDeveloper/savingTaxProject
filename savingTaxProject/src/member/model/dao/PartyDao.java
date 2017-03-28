package member.model.dao;

import static common.JDBCTemplate.*;
import java.sql.*;
import java.util.*;
import member.model.vo.Member;
import member.model.vo.Party;

public class PartyDao {
	private Properties prop;
	
	public PartyDao(){
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
			
			if(rset.next()){
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
		/*System.out.println("uid : " + uid);
		System.out.println("upwd : " + upwd);
		System.out.println(m);
		System.out.println("dao작동");*/
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
		//System.out.println("user name: " + m.getUserName());
		//System.out.println(result);
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
			
			if(rset.next()) {
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

	public int updateMember(Connection con, Member m) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "update member set user_name = ?, user_id = ?, user_pwd = ?, user_email =?";
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, m.getUserName());
			pstmt.setString(2, m.getUserId());
			pstmt.setString(3, m.getUserPwd());
			pstmt.setString(4, m.getUserEmail());
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return result;
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
			
			if(rset.next()){
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
