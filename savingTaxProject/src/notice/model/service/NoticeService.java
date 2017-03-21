package notice.model.service;

import java.sql.Connection;
import java.util.List;
import static common.JDBCTemplate.*;

import notice.model.dao.NoticeDao;
import notice.model.vo.Notice;

public class NoticeService {
	public NoticeService(){}

	public List<Notice> selectAll() {
		Connection con = getConnection();
		List<Notice> notice= new NoticeDao().selectAll(con);
		close(con);
		return notice;
	}

}
