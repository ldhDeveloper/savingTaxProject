package tax.model.service;

import tax.model.dao.VatDao;

import static common.JDBCTemplate.*;
import java.io.*;
import java.sql.Connection;
import java.util.Date;
import java.util.GregorianCalendar;
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

	
	
	
	public String printGeneralForm(String[] taxArr, Party p) {
		Date day = new GregorianCalendar().getTime();
		
		String today = taxArr[0]+" 년 " + (day.getMonth()+1) + " 월 " + day.getDate() + " 일 ";
		File form = null;
		File f = null;
		String fileName= "generalVatForm.xlsx";
		try{
		String path = VatService.class.getResource(".").getPath();
		form = new File(path + "vat.xlsx");  
		InputStream inp =  new FileInputStream(form);
		XSSFWorkbook wb = new XSSFWorkbook(inp);
		String y = taxArr[0] +"년";
		String term = "";
		String date = "";
		if(taxArr[2].equals("1")){
			term = "제 1 분기";
			date =  "1 월 01 일 ~ 6 월 30 일";
		}else{
			term = "제 2 분기";
			date =  "7 월 01 일 ~ 12 월 31 일";
		}
		insertContent(wb, 0, 7, 1, y);
		insertContent(wb, 0, 7, 3, term);
		insertContent(wb, 0, 7, 7, date);
		insertContent(wb, 0, 8, 3, p.getCname());
		insertContent(wb, 0, 8, 12, p.getPname()); 
		insertContent(wb, 0, 8, 15, String.valueOf(p.getCno().charAt(0)));
		insertContent(wb, 0, 8, 16, String.valueOf(p.getCno().charAt(1)));
		insertContent(wb, 0, 8, 17, String.valueOf(p.getCno().charAt(2)));
		insertContent(wb, 0, 8, 18, String.valueOf(p.getCno().charAt(3)));
		insertContent(wb, 0, 8, 19, String.valueOf(p.getCno().charAt(4)));
		insertContent(wb, 0, 8, 20, String.valueOf(p.getCno().charAt(5)));
		insertContent(wb, 0, 8, 21, String.valueOf(p.getCno().charAt(6)));
		insertContent(wb, 0, 8, 22, String.valueOf(p.getCno().charAt(7)));
		insertContent(wb, 0, 8, 23, String.valueOf(p.getCno().charAt(8)));
		insertContent(wb, 0, 8, 24, String.valueOf(p.getCno().charAt(9)));
		insertContent(wb, 0, 8, 25, String.valueOf(p.getCno().charAt(10)));
		insertContent(wb, 0, 8, 26, String.valueOf(p.getCno().charAt(11)));
		insertContent(wb, 0, 9, 2, p.getBirth());
		insertContent(wb, 0, 10, 15, p.getTel());
		insertContent(wb, 0, 10, 20, p.getPhone());
		insertContent(wb, 0, 11, 3, p.getCaddress());
		insertContent(wb, 0, 11, 17, p.getEmail());
		insertContent(wb, 0, 15, 12, taxArr[2]);
		insertContent(wb, 0, 15, 18, taxArr[5]);
		insertContent(wb, 0, 17, 12, taxArr[3]);
		insertContent(wb, 0, 17, 18, taxArr[6]);
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
		insertContent(wb, 0 ,51, 0, p.getCstatus());
		insertContent(wb, 0, 51, 1, p.getCtype());
		insertContent(wb, 0, 51, 11, today);
		insertContent(wb, 0, 51, 15, p.getPname());
		insertContent(wb, 1, 3, 2, p.getCno());
		insertContent(wb, 1, 16, 8, taxArr[19]);
		insertContent(wb, 1, 16, 11, taxArr[20]);
		insertContent(wb, 1, 18, 8, taxArr[2]);
		insertContent(wb, 1, 18, 11, taxArr[2]);
		f = new File("C:\\Users\\user1\\git\\savingTaxProject\\savingTaxProject\\web\\board_uploadFiles\\" + fileName);
		FileOutputStream fileOut = new FileOutputStream(f);
		wb.write(fileOut);
		fileOut.flush();
		fileOut.close();
		}catch(Exception e){
			e.printStackTrace();
			}		
		return fileName;
	}
	public void insertContent(XSSFWorkbook wb, int s, int r, int c, String content){
		XSSFSheet sheet = wb.getSheetAt(s);
		XSSFRow row = sheet.getRow(r);
		XSSFCell cell = row.getCell(c);
		cell.setCellValue(content);
	}
	public List<Diary> selectCreditRecord(int pno, String year, String quarter){
		Connection con = getConnection();
		List<Diary> creditRecord = new VatDao().selectCreditRecord(con, pno, year, quarter);
		return null;
	}



	public List<Diary> selectVlist(int write_pno, int year, int quarter) {
		Connection con = getConnection();
		List<Diary> Vlist = new VatDao().selectVlist(con, write_pno, year, quarter);
		return Vlist;
	}
	public String printSimpleForm(String[] taxArr, Party p) {
		File form = null;
		File f = null;
		try{
		String path = VatService.class.getResource(".").getPath();
		form = new File(path + "simpleVat.xlsx");  
		InputStream inp =  new FileInputStream(form);
		XSSFWorkbook wb = new XSSFWorkbook(inp);
		String y = taxArr[0] +"년";
		String date = "1 월 01 일 ~ 12 월 31 일";
		insertContent(wb, 1, 18, 11, taxArr[2]);
		f = new File("C:\\Users\\user1\\git\\savingTaxProject\\savingTaxProject\\web\\board_uploadFiles\\ff.xlsx");
		FileOutputStream fileOut = new FileOutputStream(f);
		wb.write(fileOut);
		fileOut.flush();
		fileOut.close();
		}catch(Exception e){
			e.printStackTrace();
			}		
		return "ff.xlsx";
	}
	
	
}
