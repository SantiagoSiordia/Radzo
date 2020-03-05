package com.Radzov2.Manager;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Radzov2.model.ConnectionMySQL;
import com.Radzov2.model.ManagerModel;

@WebServlet("/UpdatePasswordController")
public class UpdatePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String newpass = request.getParameter("txtNewPassword");
		String confirmation = request.getParameter("txtConfirmation");
		
		Statement stm = null;
		ResultSet rs = null;
		PreparedStatement ps = null;
		Connection con = null;
		
		ConnectionMySQL connection = new ConnectionMySQL();
		ManagerModel manager = new ManagerModel();
		
		String sql = "SELECT *FROM Manager";
		
		int idManager = 0;
		
		try {
			con = connection.connect();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			if(rs.next()) {
			    idManager = rs.getInt(1);
			    if(newpass.equals(confirmation)) {
			    	manager.setPassword(newpass);
			    	manager.setPersonIdPerson(idManager);
			    	String sql2 = "UPDATE Manager SET password = ? WHERE Person_idPerson = ?";
			    	try {
			    		ps = con.prepareStatement(sql2);
			    		ps.setString(1, manager.getPassword());
						ps.setInt(2, manager.getPersonIdPerson());
						ps.execute();
						System.out.println("Successful Update");
			    	} catch(SQLException e) {
			    		System.out.println(e);
			    	} finally {
			    		try {
			    		  con.close();
			    		} catch(SQLException e) {
			    			System.out.println(e);
			    		}
			    	}
			    }
			}
		} catch(SQLException e) {
			System.out.println(e);
		} finally {
			try {
				con.close();
			} catch(SQLException e) {
				System.err.println(e);
			}
		}
		response.sendRedirect("index.jsp");
	}

}
