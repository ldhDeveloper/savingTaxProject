package member.view.dao;

import static common.JDBCTemplate.*;
import java.sql.*;
import member.view.vo.Member;

public class MemberDao {

	public Member loginMember(Connection con, String uid, String upwd) {	
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member m = null;
		
		String query = "select * from signup where user_id = ? and user_pwd = ?";
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, uid);
			pstmt.setString(2, upwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()){
				m = new Member();
				
				m.setUserName(rset.getString("user_name"));
				m.setUserId(uid);
				m.setUserPwd(upwd);
				m.setUserEmail(rset.getString("user_email"));
			}	
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);		
		}
		System.out.println("uid : " + uid);
		System.out.println("upwd : " + upwd);
		System.out.println(m);
		System.out.println("dao작동");
		return m;
	}

	public int signupMember(Connection con, Member m) {
		PreparedStatement pstmt = null;
		int result = 0;
		System.out.println(m);
		
		String query = "insert into signup values (?, ?, ?, ?)";
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, m.getUserName());
			pstmt.setString(2, m.getUserId());
			pstmt.setString(3, m.getUserPwd());
			pstmt.setString(4, m.getUserEmail());
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		System.out.println("user name: " + m.getUserName());
		System.out.println(result);
		return result;
	}
}
