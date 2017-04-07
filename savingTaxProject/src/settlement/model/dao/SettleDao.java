package settlement.model.dao;

import java.sql.*;
import java.util.ArrayList;

import settlement.model.vo.Asset;
import settlement.model.vo.AssetCircle;
import settlement.model.vo.Settlement;

public class SettleDao {
		public SettleDao(){}

		public ArrayList<Settlement> salesnCostBar(Connection con, int pno, String dyear) {
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			ArrayList<Settlement> list = null;
			
			String query = "select nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='수익' " +
        "group by a.atype),0) as \"jansales\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     " join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='비용' " +
        "group by a.atype),0) as \"jancost\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='수익' " +
        "group by a.atype),0) as \"febsales\", " + 
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='비용' " +
        "group by a.atype),0) as \"febcost\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='수익' " +
        "group by a.atype), 0) as \"marsales\", " +
        "nvl((select sum(d.cost) " + 
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='비용' " +
        "group by a.atype), 0) as \"marcost\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='수익' " +
        "group by a.atype), 0) as \"aprsales\", " +
        "nvl((select sum(d.cost) " + 
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='비용' " +
        "group by a.atype), 0) as \"aprcost\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='수익' " +
        "group by a.atype), 0) as \"maysales\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='비용' " +
        "group by a.atype), 0) as \"maycost\", "+
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='수익' " +
        "group by a.atype),0) as \"junsales\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='비용' " +
        "group by a.atype),0) as \"juncost\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='수익' " +
        "group by a.atype),0) as \"julsales\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='비용' " +
        "group by a.atype),0) as \"julcost\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='수익' " +
        "group by a.atype),0) as \"augsales\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='비용' " +
        "group by a.atype),0) as \"augcost\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='수익' " +
        "group by a.atype),0) as \"sepsalse\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='비용' " +
        "group by a.atype),0) as \"sepcost\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='수익' " +
        "group by a.atype),0) as \"octsales\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='비용' " +
        "group by a.atype),0) as \"octcost\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='수익' " +
        "group by a.atype),0) as \"novsales\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='비용' " +
        "group by a.atype),0) as \"novcost\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='수익' " +
        "group by a.atype),0) as \"decsales\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='비용' " +
        "group by a.atype),0) as \"deccost\" " +
"from dual ";
			
			try {
				pstmt = con.prepareStatement(query);
				pstmt.setInt(1, pno);
				pstmt.setString(2, dyear + "-01");
				pstmt.setString(3, dyear + "-01");
				pstmt.setInt(4, pno);
				pstmt.setString(5, dyear + "-01");
				pstmt.setString(6, dyear + "-01");
				pstmt.setInt(7, pno);
				pstmt.setString(8, dyear + "-02");
				pstmt.setString(9, dyear + "-02");
				pstmt.setInt(10, pno);
				pstmt.setString(11, dyear + "-02");
				pstmt.setString(12, dyear + "-02");
				pstmt.setInt(13, pno);
				pstmt.setString(14, dyear + "-03");
				pstmt.setString(15, dyear + "-03");
				pstmt.setInt(16, pno);
				pstmt.setString(17, dyear + "-03");
				pstmt.setString(18, dyear + "-03");
				pstmt.setInt(19, pno);
				pstmt.setString(20, dyear + "-04");
				pstmt.setString(21, dyear + "-04");
				pstmt.setInt(22, pno);
				pstmt.setString(23, dyear + "-04");
				pstmt.setString(24, dyear + "-04");
				pstmt.setInt(25, pno);
				pstmt.setString(26, dyear + "-05");
				pstmt.setString(27, dyear + "-05");
				pstmt.setInt(28, pno);
				pstmt.setString(29, dyear + "-05");
				pstmt.setString(30, dyear + "-05");
				pstmt.setInt(31, pno);
				pstmt.setString(32, dyear + "-06");
				pstmt.setString(33, dyear + "-06");
				pstmt.setInt(34, pno);
				pstmt.setString(35, dyear + "-06");
				pstmt.setString(36, dyear + "-06");
				pstmt.setInt(37, pno);
				pstmt.setString(38, dyear + "-07");
				pstmt.setString(39, dyear + "-07");
				pstmt.setInt(40, pno);
				pstmt.setString(41, dyear + "-07");
				pstmt.setString(42, dyear + "-07");
				pstmt.setInt(43, pno);
				pstmt.setString(44, dyear + "-08");
				pstmt.setString(45, dyear + "-08");
				pstmt.setInt(46, pno);
				pstmt.setString(47, dyear + "-08");
				pstmt.setString(48, dyear + "-08");
				pstmt.setInt(49, pno);
				pstmt.setString(50, dyear + "-09");
				pstmt.setString(51, dyear + "-09");
				pstmt.setInt(52, pno);
				pstmt.setString(53, dyear + "-09");
				pstmt.setString(54, dyear + "-09");
				pstmt.setInt(55, pno);
				pstmt.setString(56, dyear + "-10");
				pstmt.setString(57, dyear + "-10");
				pstmt.setInt(58, pno);
				pstmt.setString(59, dyear + "-10");
				pstmt.setString(60, dyear + "-10");
				pstmt.setInt(61, pno);
				pstmt.setString(62, dyear + "-11");
				pstmt.setString(63, dyear + "-11");
				pstmt.setInt(64, pno);
				pstmt.setString(65, dyear + "-11");
				pstmt.setString(66, dyear + "-11");
				pstmt.setInt(67, pno);
				pstmt.setString(68, dyear + "-12");
				pstmt.setString(69, dyear + "-12");
				pstmt.setInt(70, pno);
				pstmt.setString(71, dyear + "-12");
				pstmt.setString(72, dyear + "-12");
				
				rset = pstmt.executeQuery();
				
				if(rset != null){
					list = new ArrayList<Settlement>();
				}
				
				if(rset.next()){
					Settlement s = new Settlement();
					s.setSales1(rset.getInt(1));
					s.setCost1(rset.getInt(2));
					s.setSales2(rset.getInt(3));
					s.setCost2(rset.getInt(4));
					s.setSales3(rset.getInt(5));
					s.setCost3(rset.getInt(6));
					s.setSales4(rset.getInt(7));
					s.setCost4(rset.getInt(8));
					s.setSales5(rset.getInt(9));
					s.setCost5(rset.getInt(10));
					s.setSales6(rset.getInt(11));
					s.setCost6(rset.getInt(12));
					s.setSales7(rset.getInt(13));
					s.setCost7(rset.getInt(14));
					s.setSales8(rset.getInt(15));
					s.setCost8(rset.getInt(16));
					s.setSales9(rset.getInt(17));
					s.setCost9(rset.getInt(18));
					s.setSales10(rset.getInt(19));
					s.setCost10(rset.getInt(20));
					s.setSales11(rset.getInt(21));
					s.setCost11(rset.getInt(22));
					s.setSales12(rset.getInt(23));
					s.setCost12(rset.getInt(24));
					System.out.println(s);
					list.add(s);
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			return list;
		}

		public ArrayList<Asset> assetline(Connection con, int pno, String dyear) {
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			ArrayList<Asset> list = null;
			
			String query = "select nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='자산' " +
        "group by a.atype),0) as \"janasset\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='자산' " +
        "group by a.atype),0) as \"febasset\", " + 
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='자산' " +
        "group by a.atype), 0) as \"marasset\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='자산' " +
        "group by a.atype), 0) as \"aprasset\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='자산' " +
        "group by a.atype), 0) as \"mayasset\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='자산' " +
        "group by a.atype),0) as \"junasset\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='자산' " +
        "group by a.atype),0) as \"julasset\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='자산' " +
        "group by a.atype),0) as \"augasset\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='자산' " +
        "group by a.atype),0) as \"sepsalse\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='자산' " +
        "group by a.atype),0) as \"octasset\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='자산' " +
        "group by a.atype),0) as \"novasset\", " +
        "nvl((select sum(d.cost) " +
        "from party p join diary d on(p.pno = d.write_pno) " +
                     "join accountlist a on(d.ano = a.ano) " +
        "where p.pno = ? and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) and a.atype='자산' " +
        "group by a.atype),0) as \"decasset\" " + 
"from dual ";
			
			try {
				pstmt = con.prepareStatement(query);
				pstmt.setInt(1, pno);
				pstmt.setString(2, dyear + "-01");
				pstmt.setString(3, dyear + "-01");
				pstmt.setInt(4, pno);
				pstmt.setString(5, dyear + "-02");
				pstmt.setString(6, dyear + "-02");
				pstmt.setInt(7, pno);
				pstmt.setString(8, dyear + "-03");
				pstmt.setString(9, dyear + "-03");
				pstmt.setInt(10, pno);
				pstmt.setString(11, dyear + "-04");
				pstmt.setString(12, dyear + "-04");
				pstmt.setInt(13, pno);
				pstmt.setString(14, dyear + "-05");
				pstmt.setString(15, dyear + "-05");
				pstmt.setInt(16, pno);
				pstmt.setString(17, dyear + "-06");
				pstmt.setString(18, dyear + "-06");
				pstmt.setInt(19, pno);
				pstmt.setString(20, dyear + "-07");
				pstmt.setString(21, dyear + "-07");
				pstmt.setInt(22, pno);
				pstmt.setString(23, dyear + "-08");
				pstmt.setString(24, dyear + "-08");
				pstmt.setInt(25, pno);
				pstmt.setString(26, dyear + "-09");
				pstmt.setString(27, dyear + "-09");
				pstmt.setInt(28, pno);
				pstmt.setString(29, dyear + "-10");
				pstmt.setString(30, dyear + "-10");
				pstmt.setInt(31, pno);
				pstmt.setString(32, dyear + "-11");
				pstmt.setString(33, dyear + "-11");
				pstmt.setInt(34, pno);
				pstmt.setString(35, dyear + "-12");
				pstmt.setString(36, dyear + "-12");
				
				rset = pstmt.executeQuery();
				
				if(rset != null){
					list = new ArrayList<Asset>();
				}
				
				if(rset.next()){
					Asset s = new Asset();
					s.setAsset1(rset.getInt(1));
					s.setAsset1(rset.getInt(2));
					s.setAsset2(rset.getInt(3));
					s.setAsset2(rset.getInt(4));
					s.setAsset3(rset.getInt(5));
					s.setAsset3(rset.getInt(6));
					s.setAsset4(rset.getInt(7));
					s.setAsset4(rset.getInt(8));
					s.setAsset5(rset.getInt(9));
					s.setAsset5(rset.getInt(10));
					s.setAsset6(rset.getInt(11));
					s.setAsset6(rset.getInt(12));
					System.out.println(s);
					list.add(s);
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			return list;
		}

		public ArrayList<AssetCircle> assetDonut(Connection con, int pno, String dyear, String cselect) {
			String sdate = null;
			String edate = null;
			switch(cselect){
			case "0" : 
				sdate = dyear + "-01";
				edate = dyear + "-12";
				break;
			case "1" : 
				sdate = dyear + "-01";
				edate = dyear + "-01";
				break;
			case "2" : 
				sdate = dyear + "-02";
				edate = dyear + "-02";
				break;
			case "3" : 
				sdate = dyear + "-03";
				edate = dyear + "-03";
				break;
			case "4" : 
				sdate = dyear + "-04";
				edate = dyear + "-04";
				break;
			case "5" : 
				sdate = dyear + "-05";
				edate = dyear + "-05";
				break;
			case "6" : 
				sdate = dyear + "-06";
				edate = dyear + "-06";
				break;
			case "7" : 
				sdate = dyear + "-07";
				edate = dyear + "-07";
				break;
			case "8" : 
				sdate = dyear + "-08";
				edate = dyear + "-08";
				break;
			case "9" : 
				sdate = dyear + "-09";
				edate = dyear + "-09";
				break;
			case "10" : 
				sdate = dyear + "-10";
				edate = dyear + "-10";
				break;
			case "11" : 
				sdate = dyear + "-11";
				edate = dyear + "-11";
				break;
			case "12" : 
				sdate = dyear + "-12";
				edate = dyear + "-12";
				break;	
			}
			PreparedStatement pstmt = null;
			ResultSet rset = null;
			ArrayList<AssetCircle> list = null;
			
			String query ="select anm, nvl(sumcost, 0) as sumcost " +
								"from (select Rownum as rnum, anm, sumcost " +
										"from (select a.anm as anm, sum(d.cost) as sumcost " +
												"from diary d join accountlist a on(d.ano = a.ano) " +
												"where d.write_pno = ? and a.atype='자산' and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) " +
												"group by a.anm "+ 
												"order by sumcost desc)) " +
								"where rnum <= 4 " +
								"union " +
								"select '기타',nvl((select sum(sumcost) " +
								"from (select Rownum as rnum, anm, sumcost " +
								      	"from (select a.anm as anm, sum(d.cost) as sumcost "+
								                   "from diary d join accountlist a on(d.ano = a.ano) " +
								                   "where d.write_pno = ? and a.atype='자산' and d.ddate between to_date(?, 'yyyy-mm') and last_day(to_date(?, 'yyyy-mm')) " +
								                   "group by a.anm " +
								                   "order by sumcost desc)) " +
								"where rnum >= 5), 0) "+
								"from dual " +
								"order by sumcost desc";
			
			try {
				pstmt = con.prepareStatement(query);
				pstmt.setInt(1, pno);
				pstmt.setString(2, sdate);
				pstmt.setString(3, edate);
				pstmt.setInt(4, pno);
				pstmt.setString(5, sdate);
				pstmt.setString(6, edate);
				rset = pstmt.executeQuery();
				
				if(rset != null){
					list = new ArrayList<AssetCircle>();
				}
			
				while(rset.next()){
					AssetCircle a = new AssetCircle();
					a.setAnm(rset.getString("anm"));
					a.setsumcost(rset.getLong("sumcost"));
					list.add(a);
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			
			return list;
		}
}
