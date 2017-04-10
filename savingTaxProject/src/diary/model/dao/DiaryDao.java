package diary.model.dao;
import diary.model.vo.*;
import member.model.vo.Party;

import static common.JDBCTemplate.*;

import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Properties;
import java.sql.*;

public class DiaryDao {
private Properties prop = new Properties();


	public DiaryDao(){
		try {
			prop.load(new InputStreamReader(this.getClass().getResourceAsStream("diary.properties")));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}


	public ArrayList<AccountList> showBillType(Connection con, String btype) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<AccountList> list = null;
		
		String query = "select ano, anm, atype from accountlist where atype=?";
		try {
			pstmt = con.prepareStatement(query);
			System.out.println("dao btype : " + btype);
			pstmt.setString(1, btype);
			rset = pstmt.executeQuery();
			
			
			if(rset != null){
				list = new ArrayList<AccountList>();
			}
			
			while(rset.next()){
				AccountList alist = new AccountList();
				System.out.println(rset.getString("atype"));
				alist.setAno(rset.getInt("ano"));
				alist.setAnm(rset.getString("anm"));
				alist.setAtype(rset.getString("atype"));
				System.out.println(alist);
				list.add(alist);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}


	public ArrayList<Diary> DailySearch(Connection con, String ddate, String pno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Diary> list = null;
		
		String query = "select d.dno, a.atype, d.ddate, p1.pname, a.anm, d.product, d.cost, d.billing, d.proof_type " +
							"from diary d join party p1 on(d.acc_pno = p1.pno) " +
											"  join accountlist a on (d.ano = a.ano) " +
											"  join party p2 on(d.write_pno = p2.pno) " +
							"where p2.pno = ? and to_char(d.ddate,'yyyy-mm-dd') = to_date(?,'yyyy-mm-dd') " + 
							"order by d.ddate desc";
		try {
			pstmt = con.prepareStatement(query);
			System.out.println("dao btype : " + ddate);
			pstmt.setInt(1, Integer.parseInt(pno));
			pstmt.setString(2, ddate);
			rset = pstmt.executeQuery();
			
			
			if(rset != null){
				list = new ArrayList<Diary>();
				System.out.println("list 생성");
			}
			
			while(rset.next()){
				Diary diary = new Diary();
				diary.setDno(rset.getInt("dno"));
				diary.setAtype(rset.getString("atype"));
				diary.setDdate(rset.getDate("ddate"));
				diary.setPname(rset.getString("pname"));
				diary.setAnm(rset.getString("anm"));
				diary.setProduct(rset.getString("product"));
				diary.setCost(rset.getInt("cost"));
				diary.setBilling(rset.getString("billing"));
				diary.setProof_type(rset.getString("proof_type"));
				System.out.println(diary);
				list.add(diary);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}


	public ArrayList<Diary> TermSearch(Connection con, String sdate, String edate, String pno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Diary> list = null;
		
		String query = "select d.dno, a.atype, d.ddate, p1.pname, a.anm, d.product, d.cost, d.billing, d.proof_type " +
							"from diary d join party p1 on(d.acc_pno = p1.pno) " +
											"  join accountlist a on (d.ano = a.ano) " +
											"  join party p2 on(d.write_pno = p2.pno) " +
							"where p2.pno = ? and to_char(d.ddate,'yyyy-mm-dd') between to_date(?,'yyyy-mm-dd') and to_date(?,'yyyy-mm-dd') " + 
							"order by d.ddate desc" ; 				
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, Integer.parseInt(pno));
			pstmt.setString(2, sdate);
			pstmt.setString(3, edate);
			rset = pstmt.executeQuery();
			
			
			if(rset != null){
				list = new ArrayList<Diary>();
				System.out.println("list 생성");
			}
			
			while(rset.next()){
				Diary diary = new Diary();
				diary.setDno(rset.getInt("dno"));
				diary.setAtype(rset.getString("atype"));
				diary.setDdate(rset.getDate("ddate"));
				diary.setPname(rset.getString("pname"));
				diary.setAnm(rset.getString("anm"));
				diary.setProduct(rset.getString("product"));
				diary.setCost(rset.getInt("cost"));
				diary.setBilling(rset.getString("billing"));
				diary.setProof_type(rset.getString("proof_type"));
				System.out.println(diary);
				list.add(diary);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}


	public ArrayList<Party> selectDealer(Connection con, int pno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Party> list = null;
		
		String query= "select p.pno, pname, tel, phone, ctype, cstatus, president " +  
							"from party p join party_rel pr on(p.pno = pr.rel_pno) " +
							"where pr.busi_pno = ? and pr.rel_type = '거래처'";	
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, pno);
			rset = pstmt.executeQuery();
			
			if(rset != null){
				list = new ArrayList<Party>();
			}
			
			while(rset.next()){
				Party p = new Party();
				p.setPno(rset.getInt("pno"));
				p.setPname(rset.getString("pname"));
				p.setTel(rset.getString("tel"));
				p.setPhone(rset.getString("phone"));
				p.setCtype(rset.getString("ctype"));
				p.setCstatus(rset.getString("cstatus"));
				p.setPresident(rset.getString("president"));
				list.add(p);
				System.out.println("거래처 parse : " + p);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
	}


	public int InsertDiary(Connection con, Diary diary, String indate, String pno) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "insert into diary(dno, ddate, product, cost, billing, proof_type, write_pno, acc_pno, ano) " +
							 "values(seq_diary.nextval, to_date(?,'yyyy-mm-dd') " +
							 ", ?, ?, ?, ?, ?, " +
							 "(select pr.rel_pno from party_rel pr join party p on(pr.rel_pno = p.pno) " +
							 "where pr.busi_pno = ? and pr.rel_type ='거래처' and p.pname =?), " +
							 "(select ano from accountlist where anm = ?))";

		try {
			int no = Integer.parseInt(pno);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, indate);
			pstmt.setString(2, diary.getProduct());
			pstmt.setInt(3, diary.getCost());
			pstmt.setString(4, diary.getBilling());
			pstmt.setString(5, diary.getProof_type());
			pstmt.setInt(6, no);
			pstmt.setInt(7, no);
			pstmt.setString(8, diary.getPname());
			pstmt.setString(9, diary.getAtype());
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}


	public int UpdateDiary(Connection con, Diary diary, String indate, String pno) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "update diary set ddate =to_date(?, 'yyyy-mm-dd'), product = ?, cost = ?, billing =?, proof_type =?, " +  
							   "acc_pno = (select pr.rel_pno from party_rel pr join party p on(pr.rel_pno = p.pno) " +
							   						"where pr.busi_pno = ? and pr.rel_type ='거래처' and p.pname =?), " +
							   	"ano = (select ano from accountlist where anm = ?) " +  
							   	"where dno = ?";
				
		try {
			int no = Integer.parseInt(pno);
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, indate);
			System.out.println("indate : " + indate);
			pstmt.setString(2, diary.getProduct());
			System.out.println("product : " + diary.getProduct());
			pstmt.setInt(3, diary.getCost());
			System.out.println("cost : " + diary.getCost());
			pstmt.setString(4, diary.getBilling());
			System.out.println("billing : " + diary.getBilling());
			pstmt.setString(5, diary.getProof_type());
			System.out.println("proof_type : " + diary.getProof_type());
			pstmt.setInt(6, no);
			System.out.println("no : " + no);
			pstmt.setString(7, diary.getPname());
			System.out.println("pname : " + diary.getPname());
			pstmt.setString(8, diary.getAtype());
			System.out.println("atype : " + diary.getAtype());
			pstmt.setInt(9, diary.getDno());
			System.out.println("dno : " + diary.getDno());
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}


	public int deleteDiary(Connection con, String dno) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "delete from diary where dno = ?";
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, Integer.parseInt(dno));
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}


}
