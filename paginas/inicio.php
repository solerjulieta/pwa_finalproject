<?php
  $producto = (new Productos())->todoContenido();
?>
<aside id="accionesApp" class="container">
  <div class="row">
    <div class="col-lg-3 col-sm-4">
      <button class="btn alerta">Descargar App 
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-download" viewBox="0 0 16 16">
        <path d="M.5 9.9a.5.5 0 0 1 .5.5v2.5a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-2.5a.5.5 0 0 1 1 0v2.5a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2v-2.5a.5.5 0 0 1 .5-.5z"/>
        <path d="M7.646 11.854a.5.5 0 0 0 .708 0l3-3a.5.5 0 0 0-.708-.708L8.5 10.293V1.5a.5.5 0 0 0-1 0v8.793L5.354 8.146a.5.5 0 1 0-.708.708l3 3z"/>
        </svg>
      </button>
      </div>
      <div class="col-lg-2 col-sm-4">
        <button class="btn compartir-app">Compartir
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-share" viewBox="0 0 16 16">
          <path d="M13.5 1a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zM11 2.5a2.5 2.5 0 1 1 .603 1.628l-6.718 3.12a2.499 2.499 0 0 1 0 1.504l6.718 3.12a2.5 2.5 0 1 1-.488.876l-6.718-3.12a2.5 2.5 0 1 1 0-3.256l6.718-3.12A2.5 2.5 0 0 1 11 2.5zm-8.5 4a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3zm11 5.5a1.5 1.5 0 1 0 0 3 1.5 1.5 0 0 0 0-3z"/>
          </svg>
      </button>
    </div>
  </div>
</aside>

<section class="container secCard">
    <ul id="listProd" class="row p-0 justify-content-md-evenly">
    <?php
     foreach($productos as $producto):
    ?>
        <li class="col-sm-5 col-xxl-2 col-lg-3 col-md-4 mb-4 card">
            <a href="index.php?s=detalle-libro&id=<?= $producto->getProductoId(); ?>&cat=<?= $producto->getCategoriaId();?>">
              <picture class="card-img-top">
                  <source media="(max-width: 767px)" srcset="<?= 'img/mobile-' . $producto->getImagen(); ?>">
                  <img src="<?= 'img/' . $producto->getImagen(); ?>" alt="<?= $producto->getTitulo(); ?>" class="img-fluid">
              </picture>
              <div class="card-body">
                  <h2 class="card-title"><?= $producto->getTitulo(); ?></h2>
                  <p class="card-text"><?= $producto->getAutor(); ?></p>
                  <p class="card-text">$<?= $producto->getPrecio(); ?></p>
              </div>
            </a>
        </li>
    <?php
     endforeach;
    ?>    
    </ul>
</section>