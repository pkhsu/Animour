package org.iii.ee100.animour.news;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRichTextString;

import java.io.FileOutputStream;
public class CreateXL {

	//Excel 檔要存放的位置，假定在C盤JTest目錄下
	public static String outputFile="C:/JTest/EventHistory.xls";

	public static void main(String argv[]){

		try{

			// 創建新的Excel 活頁簿

			HSSFWorkbook workbook = new HSSFWorkbook();

			// 在Excel活頁簿中建一工作表，其名為缺省值
			// 如要新建一名為"效益指標"的工作表，其語句為：
			// HSSFSheet sheet = workbook.createSheet("活動統計");

			HSSFSheet sheet = workbook.createSheet("活動統計");

			// 在索引0的位置創建行（最頂端的行）

			HSSFRow row = sheet.createRow((short)0);

			//在索引0的位置創建儲存格（左上端）
			HSSFCell cell1 = row.createCell((short) 0);
			HSSFCell cell2 = row.createCell((short) 1);
			HSSFCell cell3 = row.createCell((short) 2);
			HSSFCell cell4 = row.createCell((short) 3);
			HSSFCell cell5 = row.createCell((short) 4);
			HSSFCell cell6 = row.createCell((short) 5);
			HSSFCell cell7 = row.createCell((short) 6); 
			// 定義儲存格為字串類型
			cell1.setCellType(HSSFCell.CELL_TYPE_STRING);
			cell2.setCellType(HSSFCell.CELL_TYPE_STRING);
			cell3.setCellType(HSSFCell.CELL_TYPE_STRING);
			cell4.setCellType(HSSFCell.CELL_TYPE_STRING);
			cell5.setCellType(HSSFCell.CELL_TYPE_STRING);
			cell6.setCellType(HSSFCell.CELL_TYPE_STRING);
			cell7.setCellType(HSSFCell.CELL_TYPE_STRING);
			// 在儲存格中輸入一些內容
			cell1.setCellValue(new HSSFRichTextString("活動名稱")); 
			cell2.setCellValue(new HSSFRichTextString("活動日期")); 
			cell3.setCellValue(new HSSFRichTextString("活動時間")); 
			cell4.setCellValue(new HSSFRichTextString("活動地點")); 
			cell5.setCellValue(new HSSFRichTextString("活動介紹")); 
			cell6.setCellValue(new HSSFRichTextString("費用")); 
			cell7.setCellValue(new HSSFRichTextString("人數")); 
			// 新建一輸出檔案流
			FileOutputStream fOut = new FileOutputStream(outputFile);
			// 把相應的Excel 活頁簿存檔
			workbook.write(fOut);
			fOut.flush();
			// 操作結束，關閉檔
			fOut.close();
			System.out.println("完成建檔");

		}catch(Exception e) {
			System.out.println("已運行 xlCreate() : " + e );
			}
}
}
