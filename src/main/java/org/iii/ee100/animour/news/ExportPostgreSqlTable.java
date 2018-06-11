package org.iii.ee100.animour.news;

import java.io.*;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import java.io.FileOutputStream;
import java.sql.*;
public class ExportPostgreSqlTable{
	static String [] array = new String[3];
	public static void main(String[] args){
		readPostgres();
		writeExcelData();
	}
	public static void writeExcelData(){
		//create blank workbook
		HSSFWorkbook workbook = new HSSFWorkbook();
		HSSFSheet spreadsheet = workbook.createSheet("Event History");
		try{
			HSSFRow row = spreadsheet.createRow(0);
			Cell cell = row.createCell(0);
			String result = array[0] + " " + array[1] + " " + array[2];
			cell.setCellValue(result);
			FileOutputStream out = new FileOutputStream(new File("E:\\Event.xls"));
			workbook.write(out);
			out.close();
		}catch(Exception e){
			System.out.println("Error: " + e);
		}
		System.out.println("Event.xls created!");
	}
	public static void readPostgres(){
		try{
			Class.forName("org.postgresql.Driver");
		}catch(ClassNotFoundException e){
			System.out.println("Where psql JDBC jar?"
			+ "include library path!");
			e.printStackTrace();
			return;
		}
		System.out.println("psql driver success!");
		Connection connection = null;
		Statement stmt = null;
		try{
			connection = DriverManager.getConnection("jdbc:postgresql://127.0.0.1:5432/testdb", "postgres", "postgres");
			stmt = connection.createStatement();
			String sql = "select * from news";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){
				int id = rs.getInt("seqno");
				String subject = rs.getString("subject");
				String content = rs.getString("content");
				String address = rs.getString("address");
				array[0] = "" + id;
				array[1] = subject;
				array[2] = content;
				array[3] = address;
			}
		}catch(SQLException e){
			System.out.println("");
		}
		if(connection != null){
			System.out.println("db Success!");
		}else{
			System.out.println("Failed sql connection!");
		}
	}
}
