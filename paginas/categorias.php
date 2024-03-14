<?php
 $producto = (new Productos())->todoContenido();
 $c = $_GET['c'];
?>
<section class="container secCard">
    <?php if($c == 1): ?><h2>Autoayuda</h2><?php endif; ?>
    <?php if($c == 2): ?><h2>Infantil y Juvenil</h2><?php endif; ?>
    <?php if($c == 3): ?><h2>Juvenil</h2><?php endif; ?>
    <?php if($c == 4): ?><h2>Ficción</h2><?php endif; ?>
    <?php if($c == 5): ?><h2>Infantil</h2><?php endif; ?>
    <ul id="listProd" class="row p-0 justify-content-md-evenly listProd">
    <?php
     foreach($productos as $producto):
     if($c == $producto->getCategoriaId()):
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
    endif;
    endforeach;
    ?>
    </ul>
</section>