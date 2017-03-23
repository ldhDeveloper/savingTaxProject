package diary.model.dao;
import diary.model.vo.*;
import static common.JDBCTemplate.*;

import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Properties;

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
}
