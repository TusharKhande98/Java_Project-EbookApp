package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect 
{
	public static Connection conn;
	public static Connection getConn()
	{
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ebook-app", "root", "7218719060");
 		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return conn;
	}
}


