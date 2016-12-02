package db;
import java.sql.Connection;
import java.sql.DriverManager;
//import java.sql.SQLException;
public class DBConn {
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost/video";
	//String url="jdbc:microsoft:sqlserver://localhost:1433;databasename=blog_db";
	String username="root";
	String password="root";   
	Connection conn;
	public DBConn(){
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,username,password);
		}
		catch (Exception e) {
			// TODO 自动生成 catch 块
			e.printStackTrace();
		}
	}
	public Connection getConn(){
		return conn;
	}
	
}