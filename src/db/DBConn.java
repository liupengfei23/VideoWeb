package db;
import java.sql.Connection;
import java.sql.DriverManager;
import com.mysql.jdbc.Driver;
//import java.sql.SQLException;
public class DBConn {
	//String driver="com.mysql.jdbc.Driver";
	static String url="jdbc:mysql://localhost/video";
	//String url="jdbc:microsoft:sqlserver://localhost:1433;databasename=blog_db";
	static String username="root";
	static String password="root";   
	static Connection conn;
	public static Connection getConn(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url,username,password);
		}
		catch (Exception e) {
			// TODO 自动生成 catch 块
			e.printStackTrace();
		}
		return conn;
	}	
}