<?php
$producto = (new Productos())->traerPorId($_GET['id']);
$id = $_GET['id'];
$categoria = $_GET['cat'];
?>

<div id="aniadido" class="alert alert-success alert-dismissible fade show container" role="alert">
<p id="prodAgregado"></p>
<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<section id="detalleLibro" class="container">
    <div class="row justify-content-xl-evenly justify-content-center align-items-md-center">
        <div id="infoLibro" class="col-lg-8 order-1">
            <h2><?= $producto->getTitulo(); ?></h2>
            <p>Autor/a: <b><?= $producto->getAutor(); ?></b></p>
            <p id="precioLibro"><b>$<?= $producto->getPrecio(); ?></b></p>
            <p id="sinopsis"><?= $producto->getSinopsis(); ?></p>
            <button id="aniadir" class="btn" data-name="<?= $producto->getTitulo();?>" data-val="<?= $producto->getPrecio(); ?>">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
            <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
            <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
            </svg>Agregar al carrito</button>
        </div>
        <picture class="col-lg-4 col-xxl-2">
            <source media="(max-width: 767px)" srcset="<?= 'img/mobile-' . $producto->getImagen(); ?>">
            <img src="<?= 'img/' . $producto->getImagen(); ?>" alt=" <?= $producto->getTitulo(); ?>">
        </picture>
    </div>
</section>

<div class="linea"></div>

<section id="carouselInteres" class="container">
  <h3>Te pueden interesar:</h3>
  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
  <div class="swiper-container mySwiper">
      <div class="swiper-wrapper">
        <?php
        foreach($productos as $producto):
        if($categoria == $producto->getCategoriaId() && $producto->getProductoId() != $id):
        ?>
        <div class="swiper-slide">
        <div class="card">
            <a href="index.php?s=detalle-libro&id=<?= $producto->getProductoId(); ?>&cat=<?= $producto->getCategoriaId();?>">
            <picture class="card-img-top">
                <source media="(max-width: 767px)" srcset="<?= 'img/mobile-' . $producto->getImagen(); ?>">
                <img src="<?= 'img/' . $producto->getImagen(); ?>" alt="<?= $producto->getTitulo(); ?>" class="img-fluid">
            </picture>
            </a>
        </div>
        </div>
        <?php
        endif;
        endforeach;
        ?>  
      </div>
    </div>
</section>


