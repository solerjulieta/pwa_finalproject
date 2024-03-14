<section class="container container-carrito">
    <div id="carritoVacio" class="row">
    <picture class="col-lg-6">
        <source media="(max-width: 767px)" srcset="img/mobile-estante.png">
        <img src="img/estante.png" alt="Dibujo de estante vacío">
    </picture>
    <div class="col-lg-6">
        <h2>UPS! A tu estantería le faltan libros.</h2>
        <p>¿No sabés que leer? ¡Tenemos muchos que te van a encantar!</p>
        <p>Si no sabés por donde empezar, te sugerimos que empieces a <a href="index.php?s=inicio">buscar aquí.</a></p>
    </div>
    </div>

    <div id="detalleCarrito" class="row">
        <h2>Mi carrito</h2>
        <table class="table table-striped-columns">
            <thead>
                <tr>
                    <th>Libro</th>
                    <th>Cantidad</th>
                    <th>Precio</th>
                    <th>Eliminar</th>
                </tr>
            </thead> 
            <tbody id="tBody">
                <!-- Se agregan columnas ocultas para validar con la W3C, sino lanza error -->
                <tr class="noMostrar">
                    <td class="noMostrar"></td>
                    <td class="noMostrar"></td>
                    <td class="noMostrar"></td>
                    <td class="noMostrar"></td>
                </tr>
            </tbody>   
            <tfoot>
                <tr>
                    <td>Total</td>
                    <td></td>
                    <td id="total"></td>
                    <td><button id="vaciarCarrito" class="btn">Vaciar Carrito</button></td>
                </tr>
            </tfoot>        
        </table>
    </div>
</section>