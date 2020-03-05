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
    <link rel="stylesheet" href="css/all.css"/>

    <title>Radzo - Ramen House</title>
  </head>

  <body>

    <!-- Header section -->
    <header>
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-light">
            <a href="index.jsp" class="navbar-brand">
              <img  id="logoradzo" class="ml-4" src="img/logo.png" alt="company logo">
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
      <div class="banner d-flex align-items-center">
        <div class="container mx-auto col-3 bg-banner rounded p-3">
          <h1 class="mb-0 text-center letras-inicio kato">RADZO</h1>
          <h1 class="text-center ramen-house bitter">ramen house</h1>
          <div class="mx-auto mt-4">
            <a href="MenuCustomers.jsp" class="btn btn-outline-danger col-12 p-2 mx-auto">Ver menú</a>
          </div>
          <div class="mx-auto mt-4">
            <a href="Register.jsp" class="btn btn-outline-danger col-12 p-2 mx-auto">Registrar de Clientes</a>
          </div>
          <div class="mx-auto mt-4">
            <a href="LoginCustomers.jsp" class="btn btn-outline-danger col-12 p-2 mx-auto">Login de Clientes</a>
          </div>
        </div>
      </div>
    </header>
    <!-- End of header section -->

    <!-- Service section -->
    <section class="services py-5 text-center">
      <div class="container">
        <div class="row">
          <!-- Single service -->
          <div class="col-10 mx-auto col-md-6 col-lg-4 my-3">
            <span class="service-icon">
              <i class="fas fa-music text-white"></i>
            </span>
            <h5 class="font-weight-bold text-uppercase text-white kato">Música chida</h5>
            <p class="text-muted">
              Elegimos cuidadosamente la música que se reproduce para que puedas relajarte mientras disfrutas de tu ramen favorito.
            </p>
          </div>
          <!-- End of Single service -->
          <!-- Single service -->
          <div class="col-10 mx-auto col-md-6 col-lg-4 my-3">
            <span class="service-icon">
              <i class="fas fa-credit-card text-white"></i>
            </span>
            <h5 class="font-weight-bold text-uppercase text-white kato">Paga con tarjeta</h5>
            <p class="text-muted">
              Podrás agendar la comida que quieras a la hora que quieras pagando con tarjeta de débito o crédito.
            </p>
          </div>
          <!-- End of Single service -->
          <!-- Single service -->
          <div class="col-10 mx-auto col-md-6 col-lg-4 my-3">
            <span class="service-icon">
              <i class="fas fa-concierge-bell text-white"></i>
            </span>
            <h5 class="font-weight-bold text-uppercase text-white kato">El mejor servicio</h5>
            <p class="text-muted">
              Contamos con los mejores meseros y el mejor chef, que harán de tu experiencia en el restaurante algo memorable.
            </p>
          </div>
          <!-- End of Single service -->
        </div>
      </div>
    </section>
    <!-- End of Service section -->

    <!-- Featured section -->
    <section class="featured py-5">
      <div class="container">
        <div class="row my-3">
          <div class="col-10 mx-auto text-center">
            <h1 class="text-uppercase text-white kato">Productos más pedidos</h1>
            <p class="text-muted">
              Aquí se presentan los productos más vendidos.
            </p>
          </div>
        </div>
        <div class="row">
          <!-- Single product 1 -->
          <div class="col-10 mx-auto col-md-6 col-lg-3">
            <div class="featured-container p-5">
              <img src="img/img-products/product-1.png" class="img-fluid" alt="product">
              <span class="featured-search-icon" data-toggle="model" data-target="#productModal"><i class="fas fa-search"></i></span>
              <a href="#" class="featured-store-link"> Add to cart</a>
            </div>
            <h4 class="text-center my-2 text-white">Tonkotsu</h4>
            <h6 class="text-center text-white">
              MXN $140
            </h6>
          </div>
          <!-- End of Single product -->
          <!-- Single product 2 -->
          <div class="col-10 mx-auto col-md-6 col-lg-3">
            <div class="featured-container p-5">
              <img src="img/img-products/product-2.png" class="img-fluid" alt="product">
              <span class="featured-search-icon" data-toggle="model" data-target="#productModal"><i class="fas fa-search text-white"></i></span>
              <a href="#" class="featured-store-link"> Add to cart</a>
            </div>
            <h4 class="text-center my-2 text-white">Shoyu Pato</h4>
            <h6 class="text-center text-white">
              MXN $150
            </h6>
          </div>
          <!-- End of Single product -->
          <!-- Single product 3 -->
          <div class="col-10 mx-auto col-md-6 col-lg-3">
            <div class="featured-container p-5">
              <img src="img/img-products/product-3.png" class="img-fluid" alt="product">
              <span class="featured-search-icon" data-toggle="model" data-target="#productModal"><i class="fas fa-search text-white"></i></span>
              <a href="#" class="featured-store-link"> Add to cart</a>
            </div>
            <h4 class="text-center my-2 text-white">Shoyu Res</h4>
            <h6 class="text-center text-white">
              MXN $140
            </h6>
          </div>
          <!-- End of Single product -->
          <!-- Single product 3 -->
          <div class="col-10 mx-auto col-md-6 col-lg-3">
            <div class="featured-container p-5">
              <img src="img/img-products/product-4.png" class="img-fluid" alt="product">
              <span class="featured-search-icon" data-toggle="model" data-target="#productModal"><i class="fas fa-search text-white"></i></span>
              <a href="#" class="featured-store-link"> Add to cart</a>
            </div>
            <h4 class="text-center my-2 text-white">Dashi Camarón</h4>
            <h6 class="text-center text-white">
              MXN $140
            </h6>
          </div>
          <!-- End of Single product -->
        </div>
      </div>
    </section>
    <!-- End of Featured section -->

    <!-- Skills section -->
    <section class="skills py-5">
      <div class="container">
        <div class="row">
          <!-- Single skill -->
          <div class="col-10 mx-auto col-md-6 col-lg-4 d-flex my-3">
            <div class="skill-icon mr-3"><i class="fas fa-jedi"></i></div>
            <div class="skill-text">
              <h3 class="text-uppercase kato">
                El mejor ramen
              </h3>
              <p class="text-muted">
                Nuestros chefs han diseñado las mejores recetas con el mejor sazón para hacer de nuestro Ramen el mejor!
              </p>
            </div>

          </div>
          <!-- End of single skill -->
          <!-- Single skill -->
          <div class="col-10 mx-auto col-md-6 col-lg-4 d-flex my-3">
            <div class="skill-icon mr-3"><i class="fas fa-credit-card"></i></div>
            <div class="skill-text">
              <h3 class="text-uppercase text-justify kato">
                Paga con tarjeta
              </h3>
              <p class="text-muted">
                Podrás agendar la comida que quieras a la hora que quieras pagando con tarjeta de débito o crédito.
              </p>
            </div>

          </div>
          <!-- End of single skill -->
          <!-- Single skill -->
          <div class="col-10 mx-auto col-md-6 col-lg-4 d-flex my-3">
            <div class="skill-icon mr-3"><i class="fas fa-award"></i></div>
            <div class="skill-text">
              <h3 class="text-uppercase kato">
                Recompensas por visitarnos
              </h3>
              <p class="text-muted">
                Además de la experiencia culinaria que puedes obtener como recompensa por visitarnos, si vienes 5 veces dentro de un periodo de 6 meses, ¡te regalaremos una comida gratis! (PROXIMAMENTE)
              </p>
            </div>

          </div>
          <!-- End of single skill -->
        </div>
      </div>
    </section>
    <!-- End of skills section -->

    <!-- home filler -->
    <section>
      <div class="container-fluid">
        <div class="row home-filler align-items-end pb-5">
          <div class="col-10 mx-auto text-white text-center">
            <h4 class="text-uppercase font-weight-bold kato">
              RADZO
            </h4>
            <p>
              La mayor variedad de ramen en Guadalajara
            </p>
            <a href="menu.html" class="text-weight-bold collection-link">
              Ver menú
            </a>
            <div class="collection-underline"></div>
          </div>
        </div>
      </div>
    </section>
    <!-- end of home filler -->

    <!-- Footer -->
    <footer class="py-5 footer">
      <div class="container">
        <div class="row">
          <div class="col-10 mx-auto text-center">
            <h1 class="text-uppercase font-weight-bold text-red footer-title text-center d-inline-block kato">
              Radzo
            </h1>
            <h6 class="text-white bitter text-red">ramen house</h6>
            <!-- Footer icons -->
            <div class="footer-icons my-5 d-flex justify-content-center">
              <!-- Single icon -->
              <a href="#" class="footer-icon mx-2 text-red">
                <i class="fab fa-facebook"></i>
              </a>
              <!-- End of single icon -->
              <!-- Single icon -->
              <a href="#" class="footer-icon mx-2 text-red">
                <i class="fab fa-twitter"></i>
              </a>
              <!-- End of single icon -->
              <!-- Single icon -->
              <a href="#" class="footer-icon mx-2 text-red">
                <i class="fab fa-google-plus"></i>
              </a>
              <!-- End of single icon -->
              <!-- Single icon -->
              <a href="#" class="footer-icon mx-2 text-red">
                <i class="fab fa-instagram"></i>
              </a>
              <!-- End of single icon -->
              <!-- Single icon -->
              <a href="#" class="footer-icon mx-2 text-red">
                <i class="fab fa-youtube"></i>
              </a>
              <!-- End of single icon -->
            </div>
            <!-- End of footer icons -->
            <p class="text-muted w-75 mx-auto text-left">
              Somos el restaurante de ramen en Guadalajara con el mejor sazon en sus alimentos, además de contar con el mejor servicio de atención.

              Te invitamos a visitarnos en Calle Vidrio #2074 Col Americana, Lafayette, 44150 Guadalajara, Jal.

            </p>
          </div>
        </div>
      </div>
    </footer>
    <!-- End of footer -->

    <!-- Santiago -->
    <p class="text-white kato text-center">Santiago González Siordia</p>
    <!-- Santiago -->

    <!-- jquery -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- bootstrap js -->
    <script src="js/bootstrap.bundle.min.js"></script>
    <!-- script js -->
    <script src="js/app.js"></script>

  </body>
</html>