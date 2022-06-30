package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class DBConn {
	Connection con;
	Statement stmt;
	ResultSet rs;
	
	public DBConn() {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@124.49.255.184:1521:xe"; // 임시 아이피 255.255.255.255
		String user = "api"; // 데이터베이스 아이디
		String password = "apiproject"; // 데이터베이스 비밀번호
		
		try{
			Class.forName(driver);
			con = DriverManager.getConnection(url, user, password);
			stmt = con.createStatement();
		} catch (Exception e){
			e.printStackTrace();
		}
	}
	
}
