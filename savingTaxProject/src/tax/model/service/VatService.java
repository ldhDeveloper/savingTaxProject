package tax.model.service;

import tax.model.dao.VatDao;

import static common.JDBCTemplate.*;
import java.io.*;
import java.sql.Connection;
import java.util.List;

import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import diary.model.service.DiaryService;
import diary.model.vo.Diary;
import member.model.vo.Party;


public class VatService {

	
	
	
	public File printForm(String[] taxArr, Party p) {
		File form = null;
		File f = null;
		try{
		String path = VatService.class.getResource(".").getPath();
		
		form = new File(path + "vat.xlsx");  
		InputStream inp =  new FileInputStream(form);
		XSSFWorkbook wb = new XSSFWorkbook(inp);
		String y = taxArr[0] +"년";
		insertContent(wb, 0, 7, 3, y);
		insertContent(wb, 0, 7, 3, taxArr[2]);
		insertContent(wb, 0, 8, 2, p.getCname());
		insertContent(wb, 0, 8, 11, p.getPname());
		insertContent(wb, 0, 8, 15, p.getId_no());
		insertContent(wb, 0, 9, 2, p.getBirth());
		insertContent(wb, 0, 10, 11, p.getTel());
		insertContent(wb, 0, 10, 14, p.getCname());
		insertContent(wb, 0, 10, 15, p.getPaddress());
		insertContent(wb, 0, 10, 20, p.getPhone());
		insertContent(wb, 0, 11, 3, p.getCaddress());
		insertContent(wb, 0, 15, 12, taxArr[2]);
		insertContent(wb, 0, 15, 18, taxArr[5]);
		insertContent(wb, 0, 17, 12, taxArr[3]);
		insertContent(wb, 0, 17, 8, taxArr[6]);
		insertContent(wb, 0, 18, 12, taxArr[4]);
		insertContent(wb, 0, 18, 18, taxArr[6]);
		insertContent(wb, 0, 23, 12, taxArr[8]);
		insertContent(wb, 0, 23, 18, taxArr[9]);
		insertContent(wb, 0, 24, 12, taxArr[10]);
		insertContent(wb, 0, 24, 18, taxArr[13]);
		insertContent(wb, 0, 28, 12, taxArr[11]);
		insertContent(wb, 0, 28, 18, taxArr[14]);
		insertContent(wb, 0, 34, 12, taxArr[12]);
		insertContent(wb, 0, 34, 18, taxArr[15]);
		insertContent(wb, 0, 35, 12, taxArr[12]);
		insertContent(wb, 0, 35, 18, taxArr[15]);
		insertContent(wb, 0, 42, 18, taxArr[18]);
		insertContent(wb, 1, 3, 2, p.getCno());
		insertContent(wb, 1, 16, 8, taxArr[12]);
		insertContent(wb, 1, 16, 11, taxArr[15]);
		insertContent(wb, 1, 18, 8, taxArr[2]);
		insertContent(wb, 1, 18, 11, taxArr[2]);
		f = new File("C:\\Users\\user1\\git\\savingTaxProject\\savingTaxProject\\web\\board_uploadFiles\\ff.xlsx");
		FileOutputStream fileOut = new FileOutputStream( f);
		wb.write(fileOut);
		fileOut.flush();
		fileOut.close();
	System.out.println(f.getName());
		}catch(Exception e){
			e.printStackTrace();
			}		
		return f;
	}
	public void insertContent(XSSFWorkbook wb, int s, int r, int c, String content){
		XSSFSheet sheet = wb.getSheetAt(s);
		XSSFRow row = sheet.getRow(r);
		XSSFCell cell = row.getCell(c);
		cell.setCellValue(content);
	}
	



	public List<Diary> selectVlist(int write_pno, int year, int quarter) {
		Connection con = getConnection();
		List<Diary> Vlist = new VatDao().selectVlist(con, write_pno, year, quarter);
		return Vlist;
	}
	
	
}
