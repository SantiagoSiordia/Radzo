package com.Radzov2.CRUDConsumables;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Radzov2.model.ConsumablesModel;
import com.Radzov2.model.ConnectionMySQL;

@WebServlet("/DeleteConsumablesController")
public class DeleteConsumablesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ConnectionMySQL connection = new ConnectionMySQL();
		ConsumablesModel consumables = new ConsumablesModel();
		
		ResultSet rs = null;
		PreparedStatement ps = null;
		Statement stm = null;
		Connection con = null;
		
		int countIdConsumables = 0;
		
		String sql = "SELECT *FROM Consumables"; 
		
		try {
			con = connection.connect();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			while(rs.next()) {
			    countIdConsumables++;
		    }
			System.out.println("Consumables: " + countIdConsumables);
//			consumables.setIdConsumables(idConsumables);
//		    String sql2 = "DELETE FROM Consumables WHERE idConsumables = ?";
//		    try {
//		    	ps = con.prepareStatement(sql2);
//		    	ps.setInt(1, consumables.getIdConsumables());
//				ps.execute();
//				System.out.println("Successful Update");
//		    } catch(SQLException e) {
//		    	System.out.println(e);
//		    } finally {
//		    	try {
//		    		con.close();
//		    	} catch(SQLException e) {
//		    		System.out.println(e);
//		    	}
//		    }
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
