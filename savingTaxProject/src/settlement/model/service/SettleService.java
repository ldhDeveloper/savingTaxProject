package settlement.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import settlement.model.dao.SettleDao;
import settlement.model.vo.Asset;
import settlement.model.vo.AssetCircle;
import settlement.model.vo.Settlement;

public class SettleService {
	public SettleService(){}

	public ArrayList<Settlement> salesnCostBar(int pno, String dyear) {
		Connection con = getConnection();
		ArrayList<Settlement> list = new SettleDao().salesnCostBar(con, pno, dyear);
		return list;
	}

	public ArrayList<Asset> assetline(int pno, String dyear) {
		Connection con = getConnection();
		ArrayList<Asset> list = new SettleDao().assetline(con, pno, dyear);
		return list;
	}

	public ArrayList<AssetCircle> assetDonut(int pno, String dyear, String cselect) {
		Connection con = getConnection();
		ArrayList<AssetCircle> list = new SettleDao().assetDonut(con, pno, dyear, cselect);
		return list;
	}
	
	
}
