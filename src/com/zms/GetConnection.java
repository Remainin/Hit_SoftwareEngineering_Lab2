package com.zms;

import java.sql.*;

public class GetConnection {
	static Connection connect;
	public static Connection get() {
		try {
			Class.forName("com.mysql.jdbc.Driver"); 
			// Class.forName("org.gjt.mm.mysql.Driver");
			System.out.println("Success loading Mysql Driver!");
		} catch (Exception e) {
			System.out.print("Error loading Mysql Driver!");
			e.printStackTrace();
		}
		try {
			//connect = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookDB", "root", "1234");
			connect = DriverManager.getConnection("jdbc:mysql://pkpitbmmokag.rds.sae.sina.com.cn:10157/bookdb", "remainin", "19960102");
			System.out.println("Success connect Mysql server!");
		//	Statement stmt = connect.createStatement();
		//	ResultSet rs = stmt.executeQuery("select * from book");
		//	while (rs.next()) {
	 //	System.out.println(rs.getString("Title"));
		//	}
		} catch (Exception e) {
			System.out.print("get data error!");
			e.printStackTrace();
		}
		return connect;
	}
}