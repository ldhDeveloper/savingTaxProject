package settlement.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import settlement.model.dao.SettleDao;
import settlement.model.vo.Settlement;

public class SettleService {
	public SettleService(){}

	public ArrayList<Settlement> salesnCostBar(int pno, String dyear) {
		Connection con = getConnection();
		ArrayList<Settlement> list = new SettleDao().salesnCostBar(con, pno, dyear);
		return list;
	}
	
	
}
