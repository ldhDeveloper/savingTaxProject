package tax.controller;
import java.io.*;
import java.util.*;
import org.apache.poi.*;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import tax.model.vo.Vat;
public class PrintVat {

	
	@SuppressWarnings("resource")
	public List<Vat> xlsToVatVoList(String filePath){
		List<Vat> list = new ArrayList<Vat>();
		
		FileInputStream fis = null;
		HSSFWorkbook workbook = null;
		
		try{
			fis = new FileInputStream(filePath);
			
			HSSFSheet curSheet;
			HSSFRow curRow;
			HSSFCell curCell;
			Vat vo;
			for(int sheetIndex = 0; sheetIndex <workbook.getNumberOfSheets(); sheetIndex++){
				curSheet = workbook.getSheetAt(sheetIndex);
				
				for(int rowIndex = 0; rowIndex < curSheet.getPhysicalNumberOfRows(); rowIndex++){
				
					if(rowIndex != 0){
						curRow = curSheet.getRow(rowIndex);
						vo = new Vat();
						String value;
						
						if("".equals(curRow.getCell(0).getStringCellValue())){
							
						for(int cellIndex = 0; cellIndex<curRow.getPhysicalNumberOfCells(); cellIndex++){
							curCell = curRow.getCell(cellIndex);
						
						if(true){
							value = "";
							
							switch(curCell.getCellType()){
							case HSSFCell.CELL_TYPE_FORMULA : 
								value = curCell.getCellFormula();
								break;
							case HSSFCell.CELL_TYPE_NUMERIC : 
								value = curCell.getCellFormula() +"";
								break;
							case HSSFCell.CELL_TYPE_STRING : 
								value = curCell.getCellFormula()+"";
								break;
							case HSSFCell.CELL_TYPE_BLANK : 
								value = curCell.getCellFormula()+"";
								break;
							case HSSFCell.CELL_TYPE_ERROR : 
								value = curCell.getCellFormula()+"";
								break;
								default :
									value = new String();
									break;
								
							}
							
							
						}
						}
						}
						
					}
				}
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return null;}
}
