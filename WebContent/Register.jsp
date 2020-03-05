<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
   <meta charset="utf-8">
   <title>Radzo - Registro</title>
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
                  <a href="menuCustomers.jsp" class="nav-link kato">Menú</a>
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
            <a href="LoginCustomers.jsp" class="navbar-icon mx-2">
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
   <!-- Login -->
   <div class="singup-banner d-flex align-items-center">
      <div class="container mx-auto col-3 rounded p-3">
         <form action="CreateCustomersController" class="login-form login-banner" method="post">
            <h1 class="text-white">Registrarse</h1>
            <input type="text" class="form-control mb-3" id="txtName" name="txtName" placeholder="Nombre">
            <input type="text" class="form-control mb-3" id="txtLastName" name="txtLastName" placeholder="Apellido">
            <input type="text" class="form-control mb-3" id="txtPhone" name="txtPhone" placeholder="Teléfono"
               onkeypress='return event.charCode >= 48 && event.charCode <= 57'>

            <input type="submit" class="btn btn-outline-danger col-12" value="Registrarse">

            <div class="bottom-text text-white">
               ¿Ya tienes cuenta? <a href="LoginCustomers" class="btn btn-outline-danger">Ingresar</a>
            </div>
         </form>
      </div>
   </div>
   <!-- End of login -->
</body>

</html>