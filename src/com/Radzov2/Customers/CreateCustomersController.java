package com.Radzov2.Customers;

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

import com.Radzov2.model.ConnectionMySQL;
import com.Radzov2.model.PersonModel;
import com.Radzov2.model.CustomersModel;

@WebServlet("/CreateCustomersController")
public class CreateCustomersController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Variables to get the data from the front-end
		String name = request.getParameter("txtName");
		String lastname = request.getParameter("txtLastName");
		String phone = request.getParameter("txtPhone");
		
		//Object to stable the connection to the data base 
		ConnectionMySQL connection = new ConnectionMySQL();
		//Object person
		PersonModel person = new PersonModel();
		//Object customers
		CustomersModel customers = new CustomersModel();
		
		//Setters to save the data in the object person 
		person.setName(name);
		person.setLastName(lastname);
		person.setPhone(phone);
		person.setUserType("Customer");
		
		//Object to use the query to insert data
		PreparedStatement ps = null;
		//Object Connection
		Connection con = null;
		//Object ResulSet to find the elements inserted in the table
		ResultSet rs = null;
		//Object to use the query to get the data
		Statement stm = null;
		
		String sql = "INSERT INTO Person(name, lastname, phone, user_type) VALUES (?, ?, ?, ?)";
		
		try {
			con = connection.connect();
			ps = con.prepareStatement(sql);
			ps.setString(1, person.getName());
			ps.setString(2, person.getLastName());
			ps.setString(3, person.getPhone());
			ps.setString(4, person.getUserType());
			ps.execute();
			System.out.println("Successful insert");
			
			String sql2 = "SELECT idPerson FROM Person";
			//Count of id person
			int countIdPerson = 0;

			try {
			 	 stm = con.createStatement();
			 	 rs = stm.executeQuery(sql2);
			 	 while(rs.next()) {
			 			
			 		 countIdPerson++;
			 	 }
			 	 
			 	 customers.setPersonIdPerson(countIdPerson);
			 	 
			 	 System.out.println("Id Person: " + customers.getPersonIdPerson());
			 	 		 	 
			 	 String sql3 = "INSERT INTO Customers(Person_idPerson) VALUES (?)";
			 	 
			 	 try {
					 ps = con.prepareStatement(sql3);
					 ps.setInt(1, customers.getPersonIdPerson());
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
			} catch (SQLException e) { 
			 	 System.err.println(e);
			} finally {
			 	 try {
			 	 	  con.close();
			 	 } catch(SQLException e) {
			 	 	  System.err.println(e);
			 	 }
			}
		} catch (SQLException e) {
			System.err.println(e);

		} finally {
			try {
				con.close();
			} catch(SQLException e) {
				System.err.println(e);
			}
		}
		
		response.sendRedirect("LoginCustomers.jsp");
		
	}

}
