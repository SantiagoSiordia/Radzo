package com.Radzov2.Customers;

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

@WebServlet("/LoginCustomersController")
public class LoginCustomersController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String phone = request.getParameter("txtPhone");
		ConnectionMySQL connection = new ConnectionMySQL();
		
		Connection con = null;
		Statement ps = null;
		ResultSet rs = null;
		
		String sql = "SELECT * FROM Person";
		String user_type;
		
		boolean stop = false;
		
		try {
			con = connection.connect();
			ps = con.createStatement();
		 	rs = ps.executeQuery(sql);
		 	//Section of code to determinate if the phone number is registered
		 	while(rs.next() && stop == false) {
		 		user_type = rs.getString(5);
		 		if(user_type.equals("Customer")) {
		 			if(phone.equals(rs.getString(4))) {
		 				System.out.println("Successful login");
		 				response.sendRedirect("index.jsp");
		 				stop = true;
		 			} else {
		 			    System.out.println("Invalid phone number!");	
		 			}
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
