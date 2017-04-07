package tax.model.service;

import tax.model.dao.VatDao;
import tax.model.vo.Vat;
import static common.JDBCTemplate.*;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.util.List;

import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

import diary.model.vo.Diary;
import member.model.vo.Party;


public class VatService {

	public File printForm(int[] taxArr, Party p) {
		try{
		String path = VatService.class.getResource(".").getPath();
		File form = new File(path + "vatForm.xlsx");	
		FileInputStream inp = new FileInputStream(form);
		Workbook wb = WorkbookFactory.create(inp);
		
		}catch(Exception e){}
		return null;
	}

	
	public void insertValue(int x){
		
	}
	public void insertValue(String x){}
	
	
}
