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

	public List<Diary> selectVlist(Connection con,  int write_pno, int year, int quarter) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Diary> dlist = null;
		GregorianCalendar day = new GregorianCalendar();
		java.util.Date date = day.getTime();
		String startPeriod = "";
		String endPeriod = "";
		String query = "select ddate, cost, proof_type, d.ano, anm " +
				"from diary d  join accountlist a on (d.ano = a.ano) " + 
				" where  write_pno = ? and d.ano = 51 or d.ano between 61 and 69 and"
				+ " ddate between to_date(?, 'yyyymm') and last_day(to_date(?, 'yyyymm' )) ";
			if(quarter ==2){
				startPeriod = year  + "07" ;
				endPeriod =  year + "12" ;
			}else if (quarter ==1){
				startPeriod = year  + "01" ;
				endPeriod =  year + "06" ;
			}else{
			startPeriod = year  + "01" ;
			endPeriod =  year + "12" ;
			}
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, write_pno);
			pstmt.setString(2, startPeriod);
			pstmt.setString(3, endPeriod);
			rset = pstmt.executeQuery();
			if(rset != null){
				dlist = new ArrayList<Diary>();
				while(rset.next()){
				Diary d = new Diary();
				d.setDdate(rset.getDate("ddate"));
				d.setCost(rset.getInt("cost"));
				d.setProof_type(rset.getString("proof_type"));
				d.setAnm(rset.getString("anm"));
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
