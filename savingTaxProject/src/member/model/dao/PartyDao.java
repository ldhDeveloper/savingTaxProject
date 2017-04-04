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

	public Party loginParty(Connection con, String uid, String pwd) {
		PreparedStatement pstmt = null;
		PreparedStatement pstmt2 = null;
		ResultSet rset = null;
		ResultSet rset2 = null;
		Party p = null;

		/*
		 * String query =
		 * "select pno, pname, category, id, pwd, ENCRYPTION_AES.DEC_AES(email) as email "
		 * 
		 * + "from party where id = ? and pwd = ENCRYPTION_AES.ENC_AES(?)";
		 * 
		 * 
		 * String query2 = "select  ENCRYPTION_AES.DEC_AES(phone) as phone, " +
		 * "id_no, ENCRYPTION_AES.DEC_AES(tel) as tel" +
		 * "cname, cno, paddress, caddress, ctype, cstatus, position, oday, wno, taxtype, notax_yn, president, "
		 * + "emp_type, join_date, busi_type, tel, birth, gender " +
		 * "from party where id = ? and pwd = ENCRYPTION_AES.ENC_AES(?)";
		 */

		//String query = "select pno, pname, category, id, pwd, email from party where id = ? and pwd = ?";

		String query2 = "select pno, pname, category, id, pwd, email, phone, id_no, tel, cname, cno, paddress, caddress, ctype, cstatus, position, oday, wno, taxtype, notax_yn, president, emp_type, join_date, busi_type, tel, birth, gender from party where id = ? and pwd = ?";

		try {
			pstmt = con.prepareStatement(query2);

			pstmt.setString(1, uid);
			System.out.println("uid: "+uid);
			pstmt.setString(2, pwd);
			System.out.println("pwd:"+pwd);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				p=new Party();
				p.setPno(rset.getInt("pno"));
				p.setPname(rset.getString("pname"));
				p.setCategory(rset.getInt("category"));
				p.setId(rset.getString("id"));
				p.setPwd(rset.getString("pwd"));
				p.setEmail(rset.getString("email"));
				p.setPhone(rset.getString("phone"));
				p.setId_no(rset.getString("id_no"));
				p.setCname(rset.getString("cname"));
				p.setCno(rset.getString("cno"));
				p.setPaddress(rset.getString("paddress"));
				p.setCaddress(rset.getString("caddress"));
				p.setCstatus(rset.getString("cstatus"));
				p.setPosition(rset.getString("position"));
				p.setOday(rset.getDate("oday"));
				p.setWno(rset.getInt("wno"));
				p.setTaxtype(rset.getInt("taxtype"));
				p.setNotax_yn(rset.getInt("notax_yn"));
				p.setPresident(rset.getString("president"));
				p.setTel(rset.getString("tel"));
				p.setEmp_type(rset.getString("emp_type"));
				p.setJoin_date(rset.getDate("join_date"));
				p.setBusi_type(rset.getInt("busi_type"));
				p.setBirth(rset.getString("birth"));
				p.setGender(rset.getString("gender"));

		
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rset2 != null) {
				close(rset2);
			}
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

		String query = "insert into party(pno, category, pname, id, pwd, email) values (pno_seq.nextval, 5, ?, ?, ?, ?)";

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

		String query = "update party set pno =? ,pname=?, id=?, pwd=?,  email=?, id_no =?, paddress=?, phone=?, birth=? ,gender=? where pno=?";

		try {
			System.out.println("p: " + p);
			pstmt = con.prepareStatement(query);

			pstmt.setInt(1, p.getPno());
			pstmt.setString(2, p.getPname());
			pstmt.setString(3, p.getId());
			pstmt.setString(4, p.getPwd());
			pstmt.setString(5, p.getEmail());
			pstmt.setString(6, p.getId_no());
			pstmt.setString(7, p.getPaddress());
			pstmt.setString(8, p.getPhone());
			pstmt.setString(9, p.getBirth());
			pstmt.setString(10, p.getGender());
			pstmt.setInt(11, p.getPno());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int updatePartyMyinfo2(Connection con, Party p) {
		int result = 0;
		PreparedStatement pstmt = null;

		String query = "update party set tel=?, cname=?,  cno=?, caddress=?,  cstatus=?, ctype=?,  oday=?, wno=?, taxtype=?, notax_yn=?, president=? where pno=?";

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, p.getTel());
			pstmt.setString(2, p.getCname());
			pstmt.setString(3, p.getCno());
			pstmt.setString(4, p.getCaddress());
			pstmt.setString(5, p.getCstatus());
			pstmt.setString(6, p.getCtype());
			pstmt.setDate(7, p.getOday());
			pstmt.setInt(8, p.getWno());
			pstmt.setInt(9, p.getTaxtype());
			pstmt.setInt(10, p.getNotax_yn());
			pstmt.setString(11, p.getPresident());
			pstmt.setInt(12, p.getPno());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int insertMyinfo3(Connection con, Party p) {
		int result = 0;
		PreparedStatement pstmt = null;

		String query = "insert into party (pno ,tel, email, cname,  cno, caddress,  cstatus, ctype, president, busi_type) values (pno_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, p.getTel());
			pstmt.setString(2, p.getEmail());
			pstmt.setString(3, p.getCname());
			pstmt.setString(4, p.getCno());
			pstmt.setString(5, p.getCaddress());
			pstmt.setString(6, p.getCstatus());
			pstmt.setString(7, p.getCtype());
			pstmt.setString(8, p.getPresident());
			pstmt.setInt(9, p.getBusi_type());

			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int selectPno(Connection con, Party p) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int pno = 0;

		String query = "select pno from party where email=?";
		try {
			pstmt=con.prepareStatement(query);
			pstmt.setString(1, p.getEmail());
			rset=pstmt.executeQuery();
		    if(rset.next()){
		    	pno = rset.getInt("pno");
		    	System.out.println("rset pno:  "+pno);
		    }
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return pno;
	}

	public int insertParty_Rel(Connection con, int owner, int pno) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = "insert into party_rel values(?, ?, '거래처')";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, owner);
			pstmt.setInt(2, pno);
			
			System.out.println("party_rel: "+owner+", "+pno);
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

	public Party selectParty(Connection con, String userid) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Party p = null;

		String query = "select * from party where id=?";

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userid);

			rset = pstmt.executeQuery();
			if (rset.next()) {
				p = new Party();
				p.setPno(rset.getInt("pno"));
				p.setPname(rset.getString("pname"));
				p.setCategory(rset.getInt("category"));
				p.setId(rset.getString("id"));
				p.setPwd(rset.getString("pwd"));
				p.setTel(rset.getString("tel"));
				p.setEmail(rset.getString("email"));
				p.setId_no(rset.getString("id_no"));
				p.setCname(rset.getString("cname"));
				p.setCno(rset.getString("cno"));
				p.setPaddress(rset.getString("paddress"));
				p.setCaddress(rset.getString("caddress"));
				p.setCtype(rset.getString("ctype"));
				p.setCstatus(rset.getString("cstatus"));
				p.setPosition(rset.getString("position"));
				p.setOday(rset.getDate("oday"));
				p.setWno(rset.getInt("wno"));
				p.setTaxtype(rset.getInt("taxtype"));
				p.setNotax_yn(rset.getInt("notax_yn"));
				p.setPresident(rset.getString("president"));
				p.setForeginer_yn(rset.getInt("foreginer_yn"));
				p.setEmp_type(rset.getString("emp_type"));
				p.setJoin_date(rset.getDate("join_date"));
				p.setBusi_type(rset.getInt("busi_type"));
				p.setPhone(rset.getString("phone"));
				p.setBirth(rset.getString("birth"));
				p.setGender(rset.getString("gender"));
				p.setTo_no(rset.getInt("to_no"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return p;
	}

	public Party findId(Connection con, String pname, String email) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Party p = null;

		String query = "select * from Party where pname=? and email=?";

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, pname);
			pstmt.setString(2, email);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				p = new Party();
				p.setId(rset.getString("id"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);

		}
		return p;
	}

	public Party resetPwdCheck(Connection con, String userid, String email) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Party p = null;

		String query = "select * from party where id=? and email=?";

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userid);
			pstmt.setString(2, email);

			rset = pstmt.executeQuery();

			if (rset.next()) {
				p = new Party();
				p.setId(rset.getString("id"));
				System.out.println(p);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return p;
	}

	public int updatePwd(Connection con, String userid, String pwd) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = "update party set pwd=? where id=?";

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, pwd);
			pstmt.setString(2, userid);

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}


	// myinfo3 List (insert dao 수정 후 작업)
	public ArrayList<Party> selectList(Connection con, String cno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String query = "select * from party where pno=? and cno != ?";

		try {
			pstmt = con.prepareStatement(query);
			
			rset = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	/////올라가서 바로 작업
	public ArrayList<Party> selectList(Connection con, int owner, int pno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		 
		String query = "select * from party";
		return null;
	}

	

	public int insertEmp(Connection con, Party p) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "insert into party(pno, category, pname, emp_type, id_no, position, join_date, phone, paddress, email) values (pno_seq.nextval, 2, ?, ?, ?, ?, ?, ?, ?, ?) ";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, p.getPname());
			pstmt.setString(2, p.getEmp_type());
			pstmt.setString(3, p.getId_no());
			pstmt.setString(4, p.getPosition());
			pstmt.setDate(5, p.getJoin_date());
			pstmt.setString(6, p.getPhone());
			pstmt.setString(7, p.getPaddress());
			pstmt.setString(8, p.getEmail());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public int selectPno2(Connection con, Party p) {
		int pno = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select pno from party where id_no=?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, p.getId_no());
			
			rset = pstmt.executeQuery();
			
			if(rset.next()){
				pno = rset.getInt("pno");
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		
		
		return pno;
	}

	
	public int insertEmpRel(Connection con, int owner, int pno) {
		int result = 0;
		PreparedStatement pstmt = null;		
		
		String query = "insert into party_rel values (?, ?, ?)";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, owner);
			pstmt.setInt(2, pno);
			pstmt.setString(3, "직원");
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<Party> selectEmpList(Connection con, int pno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Party> emplist = null;
		
		String query = "select pno, pname, id_no, emp_type, position, join_date, phone, paddress, email from party where pno in (select rel_pno from party_rel where busi_pno = ? and rel_type='직원')";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pno);
			
			rset = pstmt.executeQuery();
			
			if(rset != null){
				emplist = new ArrayList<Party>();
			}
			while(rset.next()){
				Party p = new Party();
				p.setPno(rset.getInt("pno"));
				p.setId_no(rset.getString("id_no"));
				p.setPname(rset.getString("pname"));
				p.setEmp_type(rset.getString("emp_type"));
				p.setPosition(rset.getString("position"));
				p.setJoin_date(rset.getDate("join_date"));
				p.setPhone(rset.getString("phone"));
				p.setPaddress(rset.getString("paddress"));
				p.setEmail(rset.getString("email"));
				emplist.add(p);
				
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(pstmt);
		}
		
		
		return emplist;
	}

}