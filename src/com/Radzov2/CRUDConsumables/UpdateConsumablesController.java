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

@WebServlet("/UpdateConsumablesController")
public class UpdateConsumablesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		String name = request.getParameter("txtName");
		Double cost = Double.parseDouble(request.getParameter("txtCost"));
		String description = request.getParameter("txtDescription");
		String image = request.getParameter("image");
		String consumables_type = request.getParameter("txtConsumablesType");
		
		ConnectionMySQL connection = new ConnectionMySQL();
		ConsumablesModel consumables = new ConsumablesModel();
		
		ResultSet rs = null;
		Statement stm = null;
		PreparedStatement ps = null;
		Connection con = null;
		
		int countIdConsumables = 0;
		
		consumables.setName(name);
		consumables.setCost(cost);
		consumables.setDescription(description); 
		consumables.setImage(image);
		consumables.setConsumablesType(consumables_type);
		
		String sql = "SELECT *FROM Consumables";
		
		try {
			con = connection.connect();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			while(rs.next()) {
				countIdConsumables++;
			}
			System.out.println("Consumables: " + countIdConsumables);
//			if(rs.next()) {
//			    idManager = rs.getInt(1);
//			    if(newpass.equals(confirmation)) {
//			    	manager.setPassword(newpass);
//			    	manager.setPersonIdPerson(idManager);
//			    	String sql2 = "UPDATE Manager SET password = ? WHERE Person_idPerson = ?";
//			    	try {
//			    		ps = con.prepareStatement(sql2);
//			    		ps.setString(1, manager.getPassword());
//						ps.setInt(2, manager.getPersonIdPerson());
//						ps.execute();
//						System.out.println("Successful Update");
//			    	} catch(SQLException e) {
//			    		System.out.println(e);
//			    	} finally {
//			    		try {
//			    		  con.close();
//			    		} catch(SQLException e) {
//			    			System.out.println(e);
//			    		}
//			    	}
//			    }
//			}
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
