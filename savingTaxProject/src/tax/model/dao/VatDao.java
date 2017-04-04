package tax.model.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import diary.model.vo.Diary;
import static common.JDBCTemplate.*;
public class VatDao {
	

	public VatDao(){}

	public List<Diary> selectVat(Connection con, int write_pno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		List<Diary> dlist = null;
		String query = "select * from diary d, party p where d.pno = p.write_pno(+) and write_pno = ?"
				+ " and ano in (51, 61, 66, 69, 73) ";
		
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
				d.setProduct(rset.getString("product"));
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
