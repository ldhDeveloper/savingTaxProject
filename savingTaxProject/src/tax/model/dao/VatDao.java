package tax.model.dao;

import java.sql.*;
import java.util.*;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.List;

import diary.model.vo.Diary;
import static common.JDBCTemplate.*;
public class VatDao {
	

	public VatDao(){}

	public List<Diary> selectVat(Connection con, int write_pno, int month) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Diary> dlist = null;
		GregorianCalendar day = new GregorianCalendar();
		java.util.Date date = day.getTime();
		int year = date.getYear();
		String present = year +"-" + month + "-01";
		
		 
		String query = "select ddate, cost, proff_type, ano from diary where write_pno = ?";
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, write_pno);
			rset = pstmt.executeQuery();
			if(rset != null){
				dlist = new ArrayList<Diary>();
				while(rset.next()){
				Diary d = new Diary();
				d.setBilling(rset.getString("billing"));
				d.setDdate(rset.getDate("ddate"));
				d.setCost(rset.getInt("cost"));
				d.setProof_type(rset.getString("proof_type"));
				dlist.add(d);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		return dlist;
	}	
}
