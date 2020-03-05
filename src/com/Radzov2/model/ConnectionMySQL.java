package com.Radzov2.model;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionMySQL {
	
	private Connection con = null;
	
	public Connection connect() {
		
		 String server = "jdbc:mysql://localhost:3306/Radzo";
	     String user = "root";
	     String password = "Ele&Nes98";
	     
	     try {
	     	 Class.forName("com.mysql.jdbc.Driver");
		 	 con = (Connection)DriverManager.getConnection(server, user, password);
		 	 System.out.println("Successful connection");
	     } catch(Exception e) {
	     	 System.err.print(e);
	     }
	     
	     return con;
	}
}
