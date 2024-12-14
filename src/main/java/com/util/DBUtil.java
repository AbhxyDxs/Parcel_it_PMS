package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtil {
	
	final static String driverPath = "org.apache.derby.jdbc.EmbeddedDriver";
	//Default path for DB for the 1st time
//	final static String dbPath = "PMS_DB";
	//Updated path for the DB after creation!
	final static String dbPath = "D:\\Projects\\TCS\\[Java]\\Eclipse WS\\Parcel_It\\PMS_DB";
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName(driverPath);
		Connection CON = DriverManager.getConnection("jdbc:derby:"+dbPath+";create=true");
		return CON;
	}
	public static void closeAllConnections(Connection CON, PreparedStatement PS, ResultSet RS) throws SQLException {
		if(CON!=null) {
			CON.close();
			}
		if(PS!=null){
			PS.close();
			}
		if(RS!=null) {
			RS.close();
			}	
		}
	
	//Main method for creating DB for the 1st time!
//	public static void main(String args[]) {
//		Connection CON = null;
//		try {
//			CON = getConnection();
//			System.out.println("DB Created Succesfully!");
//		}catch(Exception e) {
//			e.printStackTrace();
//			System.out.println("DB Creation Failed!");
//		}
//	}
}

