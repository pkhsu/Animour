package org.iii.ee100.animour.news;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
 
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
 
public class Exporter {
    private static Connection getConnection(){
        Connection con = null;
        String url = "jdbc:postgresql://127.0.0.1:5432/testdb";
        try{
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(url,"postgres","postgres");
        }catch(ClassNotFoundException e){
            e.printStackTrace();
            System.out.println("Driver class not found. Please add PostSQL connector jar in classpath");
        }catch(SQLException e){
            e.printStackTrace();
            System.out.println("Exception occured while getting Database connection");
        }
        return con;
    }
     
    public ArrayList<Object[]> getTableData(){
        ArrayList<Object[]> tableDataList = null;
        Connection con = getConnection();
        if(con != null){
            try{
                PreparedStatement ps = con.prepareStatement("SELECT * FROM NEWS");
                ResultSet result = ps.executeQuery();
                tableDataList = new ArrayList<Object[]>();
                while(result.next()){
                    Object[] objArray = new Object[4];
                    objArray[0] = result.getInt(1);
                    objArray[1] = result.getString(2);
                    objArray[2] = result.getString(3);
                    objArray[3] = result.getString(4);
                    tableDataList.add(objArray);
                }
            }catch(SQLException e){
                e.printStackTrace();
                System.out.println("Unable to create PreparedStatement");
            }
        }
        return tableDataList;
    }
     
    public void doExport(ArrayList<Object[]> dataList){
        if(dataList != null && !dataList.isEmpty()){
            HSSFWorkbook workBook = new HSSFWorkbook();
            HSSFSheet sheet = workBook.createSheet();
            HSSFRow headingRow = sheet.createRow(0);
            headingRow.createCell((short)0).setCellValue("活動編號");
            headingRow.createCell((short)1).setCellValue("活動地點");
            headingRow.createCell((short)2).setCellValue("活動介紹");
            headingRow.createCell((short)3).setCellValue("發布日期");
            headingRow.createCell((short)4).setCellValue("發布時間");

            short rowNo = 1;
            for (Object[] objects : dataList) {
                HSSFRow row = sheet.createRow(rowNo);
                row.createCell((short)0).setCellValue(objects[0].toString());
                row.createCell((short)1).setCellValue(objects[1].toString());
                row.createCell((short)2).setCellValue(objects[2].toString());
                row.createCell((short)3).setCellValue(objects[3].toString());

                rowNo++;
            }
             
            String file = "E:/Event.xls";
            try{
                FileOutputStream fos = new FileOutputStream(file);
                workBook.write(fos);
                fos.flush();
            }catch(FileNotFoundException e){
                e.printStackTrace();
                System.out.println("Invalid directory or file not found");
            }catch(IOException e){
                e.printStackTrace();
                System.out.println("Error occurred while writting excel file to directory");
            }
        }
    }
     
    public static void main(String[] args) {
        Exporter exporter = new Exporter();
        ArrayList<Object[]> dataList = exporter.getTableData();
        if(dataList != null && dataList.size() > 0){
            exporter.doExport(dataList);
        }else{
            System.out.println("There is no data available in the table to export");
        }
    }
}
