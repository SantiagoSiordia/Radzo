package com.Radzov2.CRUDConsumables;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Radzov2.model.ConsumablesModel;
import com.Radzov2.model.ConnectionMySQL;

@WebServlet("/CreateConsumablesController")
public class CreateConsumablesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("txtName");
		Double cost = Double.parseDouble(request.getParameter("txtCost"));
		String description = request.getParameter("txtDescription");
		String image = request.getParameter("image");
		String consumables_type = request.getParameter("txtConsumablesType");
		
		ConnectionMySQL connection = new ConnectionMySQL();
		ConsumablesModel consumables = new ConsumablesModel();
		consumables.setName(name);
		consumables.setCost(cost);
		consumables.setDescription(description);
		consumables.setImage(image);
		consumables.setConsumablesType(consumables_type);
		
		PreparedStatement ps = null;
		Connection con = null;
		
		String sql = "INSERT INTO Consumables(name, cost, description, image, consumables_type) VALUES (?, ?, ?, ?, ?)";
		
		try {
			con = connection.connect();
			ps = con.prepareStatement(sql);
			ps.setString(1, consumables.getName());
			ps.setDouble(2, consumables.getCost());
			ps.setString(3, consumables.getDescription());
			ps.setString(4, consumables.getImage());
			ps.setString(5, consumables.getConsumablesType());
			ps.execute();
			System.out.println("Successful insert");
		} catch (SQLException e) {
			System.err.println(e);

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
