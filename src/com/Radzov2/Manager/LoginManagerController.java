package com.Radzov2.Manager;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Radzov2.model.ConnectionMySQL;

@WebServlet("/LoginManagerController")
public class LoginManagerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String password = request.getParameter("txtPassword");
		ConnectionMySQL connection = new ConnectionMySQL();
		
		Connection con = null;
		Statement ps = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM Manager";
		String sql2 = "SELECT * FROM Person";
		String pass;
		String user_type;
		
		try {
			con = connection.connect();
			ps = con.createStatement();
		 	rs = ps.executeQuery(sql);
		 	//Section of code to determinate if the password is correct
		 	if(rs.next()) {
		 		pass = rs.getString(2);
		 		try {
		 			rs = ps.executeQuery(sql2);
		 			if(rs.next()) { 
		 				user_type = rs.getString(5);
		 				if(password.equals(pass) && user_type.equals("Manager")) {
					 		System.out.println("Successful login");
					 		response.sendRedirect("MenuManager.jsp");
					 	} else {
		 				    System.out.println("Invalid password!");
					 	}
		 			}
		 		} catch (SQLException e) {
		 			System.err.println(e);
		 		}
		 	}
		} catch(SQLException e) {
			System.err.println(e);
		} finally {
			try {
				con.close();
			} catch(SQLException e) {
				System.err.println();
			}
		}
		
	}

}
