<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
   <meta charset="utf-8">
   <title>Radzo - Manager</title>
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
                  <a href="menuManager.jsp" class="nav-link kato">Menú</a>
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
            <a href="LoginManager.jsp" class="navbar-icon mx-2">
               <i class="fas fa-user"></i>
            </a>
            <!-- End of Single icon -->
            <!-- Single icon -->
            <a href="carrito.jsp" class="navbar-icon mx-2">
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
   <div class="login-banner d-flex align-items-center">
      <div class="container mx-auto col-3 rounded p-3">
         <form action="LoginManagerController" class="login-form login-banner" method="post">
            <h1 class="text-white">Ingresar como manager</h1>
            <input type="password" class="form-control mb-3" name="txtPassword" id="txtPassword" placeholder="Password" onkeypress='return event.charCode >= 48 && event.charCode <= 57'>
            
            
            <input type="submit" class="btn btn-outline-danger col-12" value="Ingresar">
            
            <div class="bottom-text text-white">
               ¿No tienes cuenta? <a href="Register.jsp" class="btn btn-outline-danger">Registrate</a>
            </div>
            <div class="bottom-text text-white">
               Cambiar password<a href="ChangePassword.jsp" class="btn btn-outline-danger">Cambiar password</a>
            </div>
         </form>
      </div>
   </div>
   <!-- End of login -->
</body>
</html>