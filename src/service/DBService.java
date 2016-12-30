package service;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import db.DBConn;

public class DBService {
	public static ResultSet query(String sql) throws SQLException
	{
		Connection conn = DBConn.getConn();
		Statement st;
		ResultSet rs;
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		//st.close();
		return rs;
	}
	
	public static Object queryObject(String sql) throws SQLException
	{
		Connection conn = DBConn.getConn();
		Statement st;
		ResultSet rs;
		Object o = null;
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return (Object)null;
		}
		if(rs.next())
			o = rs.getObject(1);
		st.close();
		return o;
	}
	
	public static int update(String sql) throws SQLException
	{
		Connection conn = DBConn.getConn();
		Statement st;
		int result = -1;
		try {
			st = conn.createStatement();
			result = st.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;
		}
		//st.close();
		System.out.println("111,sql");
		return result;
	}
	
}
