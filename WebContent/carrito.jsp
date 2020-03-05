<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta http-equiv="X-UA-Compatible" content="ie=edge" />
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css" />
      <!-- main css -->
      <link rel="stylesheet" href="css/main.css" />
      <!-- google fonts -->
      <link href="https://fonts.googleapis.com/css?family=Courgette" rel="stylesheet"/>
      <link href="https://fonts.googleapis.com/css?family=Bitter&display=swap" rel="stylesheet">
      <!-- font awesome -->
      <link rel="stylesheet" href="css/all.css" />
      <title>Radzo Ramen House</title>
      <style></style>
    </head>
  <body id="Change">
  <!-- Header section -->
  <header>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light">
      <a href="index.jsp" class="navbar-brand">
        <img id="logoradzo" class="ml-4" src="img/logo.png" alt="company logo">
      </a>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="navbar-nav mx-auto">
          <li class="nav-item mx-2">
            <a href="index.jsp" class="nav-link kato">Inicio</a>
          </li>
          <li class="nav-item mx-2">
            <a href="MenuCustomers.jsp" class="nav-link kato">Menú</a>
          </li>
          <li class="nav-item mx-2">
            <a href="recompensas.html" class="nav-link kato">Recompensas</a>
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
        <a href="carrito.jsp" class="navbar-icon mx-2" style="color: var(--mainRed)">
          <i class="fas fa-shopping-cart"></i>
          <div class="cart-items" id="shopCar">
            0
          </div>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNavbar">
          <i class="fas fa-bars"></i>
        </button>
        <!-- End of Single icon -->
      </div>
    </nav>
    <!-- End of Navbar -->
    </header>
    <!-- End of header section -->
    
    <div class="container">
      <div class="shop py-5">
        <h3 class="bitter text-center">Carrito</h3>
      </div>

      <div id="successMsg" class="alert alert-success hidden" role="alert">
        No hay nada en el carrito
      </div>

      <table class = "table table-light bitter">
        <tbody>
          <tr>
            <th width= "20">Fecha de entrega</th>
            <th width="20">Nombre</th>
            <th width="15">Cantidad</th>
            <th width="15">Precio por unidad</th>
            <th width="20">Precio</th>
            <th width="10"></th>
          </tr>
        </tbody>
        <tfoot>
          <tr>
            <th colspan="4" style="text-align: right; font-size: 1.5em;">Total</th>
            <th style="text-align: left; font-size: 1.5em;">$</th>
          </tr>
        </tfoot>
      </table>
    </div>
    <!-- Pago fijo 
    <section class="Pay">
      <div class="container">
        <div class="row text-center">
          <form action="" method="POST">
            <input type="submit" id="payAll" name="payAll" value="$ 0.0">
          </form>
        </div>
      </div>
    </section>

    <!-- Section 
  <section class="shop py-5">
   <div class="container">
      <div class="row my-5">
        <div class="col-12 mx-auto text-center">
          <h3>Carrito</h3>
        </div>
      </div>
   </div>
  </section> -->

   <!-- jquery -->
   <script src="js/jquery-3.3.1.min.js"></script>
   <!-- bootstrap js -->
   <script src="js/bootstrap.bundle.min.js"></script>
   <!-- script js -->
   <script src="js/app.js"></script>
   <script src="js/shopcart.js"></script>
</body>
</html>