<?php
require_once __DIR__ . '/bootstrap/autoload.php';

$productoObj = new Productos();
$productos = $productoObj->todoContenido();

$rutas = [
    'inicio' => [
        'title' => 'Página Principal',  
    ],
    'categorias' => [
        'title' => 'Categorías',
    ],
    'detalle-libro' => [
        'title' => 'Detalle libro',
    ],
    'carrito' => [
        'title' => 'Carrito',
    ],
    '404' => [
        'title' => 'Página no encontrada',
    ],
];

$pagina = $_GET['s'] ?? 'inicio';

if(!isset($rutas[$pagina])){
    $pagina = '404';
}

$rutaFiltrada= $rutas[$pagina];
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Libroteca: <?= $rutaFiltrada['title'] ?></title>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Estilos de Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
    <!-- Swipper -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <!-- Estilos personales -->
    <link rel="stylesheet" href="css/estilos.css?=<?=time()?>">
    <!-- Archivo Manifest -->
    <link rel="manifest" href="manifest.webmanifest">
</head>
<body>
<header>
  <h1 id="logo">Libroteca</h1>
  <nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#barra" aria-controls="barra" aria-expanded="false" aria-label="Botón hamburguesa">
          <span class="navbar-toggler-icon"></span>
        </button>
      <div class="collapse navbar-collapse" id="barra">
        <ul class="navbar-nav ms-auto">
          <li id="inicio" class="nav-item">
            <a class="nav-link" href="index.php?s=inicio">Inicio</a>
          </li>
          <li id="categoria" class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">Categorías</a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <li><a class="dropdown-item" href="index.php?s=categorias&c=1">Autoayuda</a></li>
              <li><a class="dropdown-item" href="index.php?s=categorias&c=5">Infantil</a></li>
              <li><a class="dropdown-item" href="index.php?s=categorias&c=2">Infantil & Juvenil</a></li>
              <li><a class="dropdown-item" href="index.php?s=categorias&c=3">Juvenil</a></li> 
              <li><a class="dropdown-item" href="index.php?s=categorias&c=4">Ficción</a></li>
            </ul>
          </li>
          <li id="verCarrito" class="nav-item"><a class="nav-link" href="index.php?s=carrito"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" class="bi bi-cart3" viewBox="0 0 16 16">
          <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .49.598l-1 5a.5.5 0 0 1-.465.401l-9.397.472L4.415 11H13a.5.5 0 0 1 0 1H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l.84 4.479 9.144-.459L13.89 4H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
          </svg>
          <span id="contadorCarrito"></span>
        </a></li>
        </ul>
      </div>
      <span id="sinConexion"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-exclamation-circle" viewBox="0 0 16 16">
      <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
      <path d="M7.002 11a1 1 0 1 1 2 0 1 1 0 0 1-2 0zM7.1 4.995a.905.905 0 1 1 1.8 0l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 4.995z"/>
      </svg> Sin conexión</span>
    </div>
  </nav>
</header>
<main>
  <?php
     if(file_exists('./paginas/' . $pagina . '.php')){
        require __DIR__ . './paginas/' . $pagina . '.php';
     } else {
        require __DIR__ . './paginas/404.php';
     }
  ?>
</main>
<!-- Separador de contenido -->
<div class="linea"></div>
<!-- Información de envíos y pagos -->
<aside id="infoUtil" class="container">
  <div class="row">
    <div class="col-lg-1">
      <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
      <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
      <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
      </svg>
    </div>
    <div class="col-lg-3">
      <p>Envíos a todo el país.</p>
      <p>Recibí tu pedido a donde quieras.</p>
    </div>
    <div class="col-lg-1">
      <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-truck" viewBox="0 0 16 16">
      <path d="M0 3.5A1.5 1.5 0 0 1 1.5 2h9A1.5 1.5 0 0 1 12 3.5V5h1.02a1.5 1.5 0 0 1 1.17.563l1.481 1.85a1.5 1.5 0 0 1 .329.938V10.5a1.5 1.5 0 0 1-1.5 1.5H14a2 2 0 1 1-4 0H5a2 2 0 1 1-3.998-.085A1.5 1.5 0 0 1 0 10.5v-7zm1.294 7.456A1.999 1.999 0 0 1 4.732 11h5.536a2.01 2.01 0 0 1 .732-.732V3.5a.5.5 0 0 0-.5-.5h-9a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .294.456zM12 10a2 2 0 0 1 1.732 1h.768a.5.5 0 0 0 .5-.5V8.35a.5.5 0 0 0-.11-.312l-1.48-1.85A.5.5 0 0 0 13.02 6H12v4zm-9 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm9 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
      </svg>
    </div>
    <div class="col-lg-3">
      <p>Envío gratis.</p>
      <p>Para compras desde $3.500.</p>
    </div>
    <div class="col-lg-1">
      <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-credit-card" viewBox="0 0 16 16">
      <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v1h14V4a1 1 0 0 0-1-1H2zm13 4H1v5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V7z"/>
      <path d="M2 10a1 1 0 0 1 1-1h1a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-1z"/>
      </svg>
    </div>
    <div class="col-lg-3">
       <p>3 y 6 cuotas sin interés.</p>
       <p>Todas las tarjetas de crédito.</p>
    </div>
  </div>
</aside>
<footer></footer>
  <!-- JS Bootstrap -->
  <script src="js/bootstrap.bundle.min.js"></script>
  <!-- Archivo js principal -->
  <script src="js/main.js"></script>
  <!-- JS Agregar Producto -->
  <?php if($pagina == 'detalle-libro'): ?> <script src="js/agregar-prod.js"></script> <?php endif; ?>
  <!-- JS Reccorre Carrito -->
  <?php if($pagina == 'carrito'): ?> <script src="js/recorre-carrito.js"></script> <?php endif; ?>
  <!-- Swiper JS -->
  <?php if($pagina == 'detalle-libro'): ?><script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script><?php endif; ?>
  <!-- JS CAROUSEL -->
  <?php if($pagina == 'detalle-libro'): ?><script src="js/carousel.js"></script><?php endif; ?>
</body>
</html>