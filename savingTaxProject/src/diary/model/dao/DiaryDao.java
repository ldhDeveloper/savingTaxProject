package diary.model.dao;
import diary.model.vo.*;
import member.model.vo.Party;

import static common.JDBCTemplate.*;

import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Properties;
import java.sql.*;

public class DiaryDao {
private Properties prop = new Properties();


	public DiaryDao(){
		try {
			prop.load(new InputStreamReader(this.getClass().getResourceAsStream("diary.properties")));
		} catch (IOException e) {
			// TODO Auto-generated catch block
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


	public ArrayList<Diary> DailySearch(Connection con, String ddate) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<Diary> list = null;
		
		String query = "select a.atype, d.ddate, p1.pname, a.anm, d.product, d.cost, d.billing, d.proof_type " +
							"from diary d join party p1 on(d.acc_pno = p1.pno) " +
											"  join accountlist a on (d.ano = a.ano) " +
											"  join party p2 on(d.write_pno = p2.pno) " +
							"where p2.pno = 6 and to_char(d.ddate,'yyyy-mm-dd') = to_date(?,'yyyy-mm-dd')";
		try {
			pstmt = con.prepareStatement(query);
			System.out.println("dao btype : " + ddate);
			pstmt.setString(1, ddate);
			rset = pstmt.executeQuery();
			
			
			if(rset != null){
				list = new ArrayList<Diary>();
			}
			
			while(rset.next()){
				Diary diary = new Diary();
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
}
