<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.Radzov2.model.ConsumablesModel" %>
<%@ page import="com.Radzov2.model.ConnectionMySQL" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
   <meta charset="utf-8">
   <title>Radzo - Agregar consumibles</title>
   <!-- bootstrap css -->
   <link rel="stylesheet" href="css/bootstrap.min.css" />
   <!-- main css -->
   <link rel="stylesheet" href="css/main.css" />
   <!-- google fonts -->
   <link href="https://fonts.googleapis.com/css?family=Courgette" rel="stylesheet" />
   <!-- font awesome -->
   <link rel="stylesheet" href="css/all.css" />
</head>

<body>
   <header>
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-light">
         <a href="index.jsp" class="navbar-brand">
            <img id="logoradzo" class="ml-4" src="img/logo.png" alt="company logo">
         </a>
         <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="navbar-nav mx-auto">
               <li class="nav-item mx-2 nav-active">
                  <a href="index.jsp" class="nav-link kato">Inicio</a>
               </li>
               <li class="nav-item mx-2">
                  <a href="MenuCustomers.jsp" class="nav-link kato">Menú</a>
               </li>
               <li class="nav-item mx-2">
                  <a href="recompensas.jsp" class="nav-link kato">Recompensas</a>
               </li>
            </ul>
         </div>
         <a class="navbar-icons d-none d-lg-flex">
            <!-- Single icon -->
            <a href="" class="navbar-icon mx-2">
               <i class="fas fa-search"></i>
            </a>
            <!-- End of Single icon -->
            <!-- Single icon -->
            <a href="" class="navbar-icon mx-2">
               <i class="fas fa-user"></i>
            </a>
            <!-- End of Single icon -->
            <!-- Single icon -->
            <a href="carrito.html" class="navbar-icon mx-2">
               <i class="fas fa-shopping-cart"></i>
               <div class="cart-items">
                  0
               </div>
            </a>
            <!-- End of Single icon -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNavbar">
               <i class="fas fa-bars"></i>
            </button>
      </nav>
      <!-- End of Navbar -->
   </header>
   <!-- Delete consumables -->
   <div class="singup-banner d-flex align-items-center">
      <div class="container mx-auto col-3 rounded p-3">
      <form action="DeleteCustomersController" class="login-form login-banner" method="post">
            <h1 class="text-white">Borrar consumibles</h1>

            <input type="submit" class="btn btn-outline-danger col-12" value="Eliminar consumibles">

         </form>
      </div>
   </div>
   <!-- End of menu consumables -->
   <!-- Delete consumables -->
   <div class="singup-banner d-flex align-items-center">
      <div class="container mx-auto col-3 rounded p-3">
        <ul>
            <li><a href="AddMenuManager.jsp">Agregar consumibles</a></li>
            <li><a href="EditConsumables.jsp">Editar consumibles</a></li>
        </ul>
      </div>
   </div>
   <!-- End of menu consumables -->
   <!-- Show consumables -->
   <div class="singup-banner d-flex align-items-center">
      <div class="container mx-auto col-3 rounded p-3">
         <h1 class="text-white">Mostrar Consumibles</h1>
            <%
            	ConsumablesModel consumables = new ConsumablesModel();
                ConnectionMySQL connection = new ConnectionMySQL();
                
                Connection con = null;
                ResultSet rs = null;
                Statement stm = null;
                
                String sql = "SELECT *FROM Consumables";
                
                try {
                	con = connection.connect();
                	stm = con.createStatement();
                	rs = stm.executeQuery(sql);
                	while(rs.next()) {
                		out.println("<br>Nombre: " + rs.getString(2));
                		out.println("<br>Costo: " + rs.getString(3));
                		out.println("<br>Descripción: " + rs.getString(4));
            %>  		
            <img alt="<%=rs.getString(2) %>" src="images/<%=rs.getString(5) %>" height="50" width="50">
            <%          
                        out.println("<br>Tipo de consumible: " + rs.getString(6));
                	}
                } catch(SQLException e) {
                	System.out.println(e);
                } finally {
                	try {
                		con.close();
                	} catch(SQLException e) {
                		System.out.println(e);
                	}
                }
            %>
      </div>
   </div>
   <!-- End of show consumables -->
</body>

</html>