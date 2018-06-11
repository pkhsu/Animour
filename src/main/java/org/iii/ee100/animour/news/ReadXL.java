package org.iii.ee100.animour.news;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;

import java.io.FileInputStream;
public class ReadXL {
	/** Excel檔的存放位置。注意是正斜線*/
	public static String fileToBeRead="C:/JTest/EventHistory.xls";
	public static void main(String argv[]){
		try{
			// 創建對Excel活頁簿檔的引用
			HSSFWorkbook workbook = new HSSFWorkbook(new FileInputStream(fileToBeRead));
			// 創建對工作表的引用。
			// 本例是按名引用（讓我們假定那張表有著缺省名"活動統計"）
			HSSFSheet sheet = workbook.getSheet("活動統計");
			// 也可用getSheetAt(int index)按索引引用，
			// 在Excel文檔中，第一張工作表的缺省索引是0，
			// 其語句為：HSSFSheet sheet = workbook.getSheetAt(0);
			// 讀取欄位
			HSSFRow row = sheet.getRow(0);
			HSSFCell cell1 = row.getCell((short)0);
			HSSFCell cell2 = row.getCell((short)1);
			HSSFCell cell3 = row.getCell((short)2);
			HSSFCell cell4 = row.getCell((short)3);
			HSSFCell cell5 = row.getCell((short)4);
			HSSFCell cell6 = row.getCell((short)5);
			HSSFCell cell7 = row.getCell((short)6);
			
			// 輸出單元內容，cell.getStringCellValue()就是取所在欄位的值
			System.out.println("各欄位名稱為： " + 
								cell1.getStringCellValue()+" "+
								cell2.getStringCellValue()+" "+
								cell3.getStringCellValue()+" "+
								cell4.getStringCellValue()+" "+
								cell5.getStringCellValue()+" "+
								cell6.getStringCellValue()+" "+
								cell7.getStringCellValue()
			);
			
			}catch(Exception e) {
				System.out.println("已運行xlRead() : " + e );
				}
		}

//設置儲存格格式
//在這裡，我們將只介紹一些和格式設置有關的語句，我們假定workbook就是對一個活頁簿的引用。
//在JAVA中，第一步要做的就是創建和設置字體和儲存格的格式，然後再應用這些格式：
//1、創建字體，設置其為紅色、粗體：
//
//HSSFFont font = workbook.createFont();
//font.setColor(HSSFFont.COLOR_RED);
//font.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
//
//2、創建格式
//
//HSSFCellStyle cellStyle= workbook.createCellStyle();
//cellStyle.setFont(font);
//
//3、應用格式
//
//HSSFCell cell = row.createCell((short) 0);
//cell.setCellStyle(cellStyle);
//cell.setCellType(HSSFCell.CELL_TYPE_STRING);
//cell.setCellValue("標題 ");

}