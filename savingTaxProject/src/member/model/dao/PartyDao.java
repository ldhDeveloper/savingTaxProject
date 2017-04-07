package member.model.dao;

import static common.JDBCTemplate.*;

import java.net.URLEncoder;
import java.sql.*;
import java.util.*;

import member.model.vo.Emp;
import member.model.vo.Grade;
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

		String query2 = "select p.PNO, PNAME, CATEGORY, ID, PWD, TEL, EMAIL, ID_NO, CNAME, CNO, PADDRESS, CADDRESS, CTYPE, CSTATUS, POSITION, ODAY, WNO, TAXTYPE, NOTAX_YN, PRESIDENT, FOREGINER_YN, EMP_TYPE, JOIN_DATE, BUSI_TYPE, PHONE, BIRTH, GENDER, TO_NO, gtype, irate, rdate "
								+"from party p left join grade g on (p.pno = g.pno) where id = ? and pwd =?";

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
				p.setTaxType(rset.getString("taxtype"));
				p.setNotax_yn(rset.getString("notax_yn"));
				p.setPresident(rset.getString("president"));
				p.setForeginer_yn(rset.getString("foreginer_yn"));
				p.setEmp_type(rset.getString("emp_type"));
				p.setJoin_date(rset.getDate("join_date"));
				p.setBusi_type(rset.getString("busi_type"));
				p.setPhone(rset.getString("phone"));
				p.setBirth(rset.getString("birth"));
				p.setGender(rset.getString("gender"));
				p.setTo_no(rset.getInt("to_no"));
				p.setGtype(rset.getString("gtype"));
				p.setIrate(rset.getDouble("irate"));
				p.setRdate(rset.getDate("rdate"));
				
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

		String query = "update party set tel=?, cname=?,  cno=?, caddress=?,  cstatus=?, ctype=?,  oday=?, wno=?, taxtype=?, notax_yn=?, president=?, irate=? where pno=?";

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
			pstmt.setString(9, p.getTaxType());
			pstmt.setString(10, p.getNotax_yn());
			pstmt.setString(11, p.getPresident());
			pstmt.setDouble(12, p.getIrate());
			pstmt.setInt(13, p.getPno());

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

		String query = "insert into party (pno, pname, category, tel, email, cname,  cno, caddress,  cstatus, ctype, president, busi_type) values (pno_seq.nextval, ?, 4, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, p.getPname());
			pstmt.setString(2, p.getTel());
			pstmt.setString(3, p.getEmail());
			pstmt.setString(4, p.getCname());
			pstmt.setString(5, p.getCno());
			pstmt.setString(6, p.getCaddress());
			pstmt.setString(7, p.getCstatus());
			pstmt.setString(8, p.getCtype());
			pstmt.setString(9, p.getPresident());
			pstmt.setString(10, p.getBusi_type());

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
			
			result = pstmt.executeUpdate();
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

		String query =  "select p.PNO, PNAME, CATEGORY, ID, PWD, TEL, EMAIL, ID_NO, CNAME, CNO, PADDRESS, CADDRESS, CTYPE, CSTATUS, POSITION, ODAY, WNO, TAXTYPE, NOTAX_YN, PRESIDENT, FOREGINER_YN, EMP_TYPE, JOIN_DATE, BUSI_TYPE, PHONE, BIRTH, GENDER, TO_NO, gtype, irate, rdate "
				+"from party p left join grade g on (p.pno = g.pno) where id = ?";
				
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
				p.setTaxType(rset.getString("taxtype"));
				p.setNotax_yn(rset.getString("notax_yn"));
				p.setPresident(rset.getString("president"));
				p.setForeginer_yn(rset.getString("foreginer_yn"));
				p.setEmp_type(rset.getString("emp_type"));
				p.setJoin_date(rset.getDate("join_date"));
				p.setBusi_type(rset.getString("busi_type"));
				p.setPhone(rset.getString("phone"));
				p.setBirth(rset.getString("birth"));
				p.setGender(rset.getString("gender"));
				p.setTo_no(rset.getInt("to_no"));
				p.setGtype(rset.getString("gtype"));
				p.setIrate(rset.getDouble("irate"));
				p.setRdate(rset.getDate("rdate"));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return p;
	}

	public Party selectParty2(Connection con, int pno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Party p = null;

		String query =  "select p.PNO, PNAME, CATEGORY, ID, PWD, TEL, EMAIL, ID_NO, CNAME, CNO, PADDRESS, CADDRESS, CTYPE, CSTATUS, POSITION, ODAY, WNO, TAXTYPE, NOTAX_YN, PRESIDENT, FOREGINER_YN, EMP_TYPE, JOIN_DATE, BUSI_TYPE, PHONE, BIRTH, GENDER, TO_NO, gtype, irate, rdate "
				+"from party p left join grade g on (p.pno = g.pno) where p.pno = ?";
				
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pno);

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
				p.setTaxType(rset.getString("taxtype"));
				p.setNotax_yn(rset.getString("notax_yn"));
				p.setPresident(rset.getString("president"));
				p.setForeginer_yn(rset.getString("foreginer_yn"));
				p.setEmp_type(rset.getString("emp_type"));
				p.setJoin_date(rset.getDate("join_date"));
				p.setBusi_type(rset.getString("busi_type"));
				p.setPhone(rset.getString("phone"));
				p.setBirth(rset.getString("birth"));
				p.setGender(rset.getString("gender"));
				p.setTo_no(rset.getInt("to_no"));
				p.setGtype(rset.getString("gtype"));
				p.setIrate(rset.getDouble("irate"));
				p.setRdate(rset.getDate("rdate"));
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

	//myinfo3 거래처정보 가져오기
	public ArrayList<Party> selectcustomerList(Connection con, int pno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Party> list=null; 
		
		String query = "select pno, cname, president, cno, cstatus, ctype, tel, caddress, email from party where pno in (select rel_pno from party_rel where busi_pno = ? and rel_type='거래처')";
		
		try {
		   pstmt = con.prepareStatement(query);
		   pstmt.setInt(1, pno);
		   System.out.println("select사업자pno: "+pno);
		   
		   rset = pstmt.executeQuery();
		  
		   if(rset != null){
			   list = new ArrayList<Party>();
		   }
		   while(rset.next()){
			   Party p = new Party();
			   p.setPno(rset.getInt("pno"));
			   p.setCname(rset.getString("cname"));
			   p.setPresident(rset.getString("president"));
			   p.setCno(rset.getString("cno"));
			   p.setCstatus(rset.getString("cstatus"));
			   p.setCtype(rset.getString("ctype"));
			   p.setTel(rset.getString("tel"));
			   p.setCaddress(rset.getString("caddress"));
			   p.setEmail(rset.getString("email"));
			   list.add(p);
			   
		   }
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			close(rset);
			close(pstmt);
		}
		
		System.out.println("select사업자리턴하는list: "+list);
		System.out.println("select사업자리턴하는list갯수: "+list.size());
		return list;
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
	
	// 등급 변경 Dao
	public int insertGrade(Connection con, Grade g) {
		int result = 0;
		PreparedStatement pstmt = null;
    String query = "insert into grade values (seq_grade.nextval , to_date(?, 'yyyy-mm-dd'), to_date(?, 'yyyy-mm-dd'), ?, 'VIP')";
		
		
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setString(1, g.getSdate());
			pstmt.setString(2, g.getEdate());
			pstmt.setInt(3, g.getPno());
			
			System.out.println(g.getSdate());
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		System.out.println("grade dao : " + g);
		return result;
	}
  

	//myinfo3 리스트누르면 값 조회
	public Party selectParty(Connection con, int pno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Party p=null;
		String query = "select cname, president, cno, cstatus, ctype, tel, caddress, email from party where pno=?";
		System.out.println("daopnooo: "+pno);
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pno);
			
			rset=pstmt.executeQuery();
			if(rset.next()){
				p = new Party();
				System.out.println("pno222"+pno);
				p.setPno(pno);
				p.setCname(rset.getString("cname"));
				p.setPresident(rset.getString("president"));
				p.setCno(rset.getString("cno"));
				p.setCstatus(rset.getString("cstatus"));
				p.setCtype(rset.getString("ctype"));
				p.setTel(rset.getString("tel"));
				p.setCaddress(rset.getString("caddress"));
				p.setEmail(rset.getString("email"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			close(rset);
			close(pstmt);
		}
		return p;
	}

	public Party selectEmp(Connection con, int pno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Party p = null;
		
		String query = "select pname, emp_type, id_no, position, join_date, phone, paddress, email from party where pno=?";
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()){
				p = new Party();
				
				p.setPno(pno);
				p.setPname(rset.getString("pname"));
				p.setEmp_type(rset.getString("emp_type"));
				p.setId_no(rset.getString("id_no"));
				p.setPosition(rset.getString("position"));
				p.setJoin_date(rset.getDate("join_Date"));
				p.setPhone(rset.getString("phone"));
				p.setPaddress(rset.getString("paddress"));
				p.setEmail(rset.getString("email"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		
		return p;
	}

	public int updateEmp(Connection con, Party p, int owner) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "update party set pname=?, emp_type=?, position=?, join_date=?, phone=?, paddress=?, email=? where id_no=?";
		
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, p.getPname());
			pstmt.setString(2, p.getEmp_type());
			pstmt.setString(3, p.getPosition());
			pstmt.setDate(4, p.getJoin_date());
			pstmt.setString(5, p.getPhone());
			pstmt.setString(6, p.getPaddress());
			pstmt.setString(7, p.getEmail());
			pstmt.setString(8, p.getId_no());
			
			result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return result;
	}

	//info3 수정
	public int updateMyinfo3(Connection con, Party p, int owner) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "update party set pname=?, cname=?, president=?, cno=?, busi_type=?, cstatus=?, ctype=?, tel=?, caddress=?, email=? where cno=?";
		
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, p.getPname());
			System.out.println(p.getPname());
			pstmt.setString(2, p.getCname());
			System.out.println(p.getCname());
			pstmt.setString(3, p.getPresident());
			System.out.println(p.getPresident());
			pstmt.setString(4, p.getCno()); 
			System.out.println(p.getCno());
			pstmt.setString(5, p.getBusi_type());
			System.out.println(p.getBusi_type()); //
			pstmt.setString(6, p.getCstatus());
			System.out.println(p.getCstatus());
			pstmt.setString(7, p.getCtype()); //
			System.out.println(p.getCtype());
			pstmt.setString(8, p.getTel());//
			System.out.println(p.getTel());
			pstmt.setString(9, p.getCaddress());//
			System.out.println(p.getCaddress());
			pstmt.setString(10, p.getEmail()); //
			System.out.println(p.getEmail());
			pstmt.setString(11, p.getCno());
			
			result = pstmt.executeUpdate();
			System.out.println("dao result:"+result);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			close(pstmt);
		}
		return result;
	}

	public ArrayList<Emp> empSearch(Connection con, int pno, String startmonth, String endmonth) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Emp> list=null; 
		
		String query = "select p.pno, p.pname, p.id_no, p.position, s.sno, s.wsdate, s.wedate, s.saldate, " + 
							   "s.init_pay, s.bonus, s.incentive, s.over_pay, s.meals, s.child_pay, s.car_pay, s.exp, s.rest_pay " +
							   "from party_rel pr left join party p on (pr.rel_pno = p.pno) " +
							   							"left join salary s on (p.pno = s.pno) " +
							   "where pr.busi_pno = ? and s.saldate >=  to_date(?,'yyyy-mm-dd') and s.saldate <= last_day(to_date(?, 'yyyy-mm'))";
		
		try {
		   pstmt = con.prepareStatement(query);
		   pstmt.setInt(1, pno);
		   pstmt.setString(2, startmonth);
		   pstmt.setString(3, endmonth);
		   
		   rset = pstmt.executeQuery();
		  
		   if(rset != null){
			   list = new ArrayList<Emp>();
		   }
		   while(rset.next()){
			   Emp e = new Emp();
			   e.setPno(rset.getInt("pno"));
			   e.setPname(rset.getString("pname"));
			   e.setId_no(rset.getString("id_no"));
			   e.setPosition(rset.getString("position"));
			   e.setSno(rset.getInt("sno"));
			   e.setWsdate(rset.getDate("wsdate"));
			   e.setWedate(rset.getDate("wedate"));
			   e.setSaldate(rset.getDate("saldate"));
			   e.setInit_pay(rset.getInt("init_pay"));
			   e.setBonus(rset.getInt("bonus"));
			   e.setIncentive(rset.getInt("incentive"));
			   e.setOver_pay(rset.getInt("over_pay"));
			   e.setMeals(rset.getInt("meals"));
			   e.setChild_pay(rset.getInt("child_pay"));
			   e.setCar_pay(rset.getInt("car_pay"));
			   e.setExp(rset.getInt("exp"));
			   e.setRest_pay(rset.getInt("rest_pay"));
			   list.add(e);
			   
		   }
		} catch (Exception e) {
			e.printStackTrace();
		} finally{
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

}