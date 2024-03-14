let agregarProd = d.getElementById('aniadir');
let alert = d.getElementById('aniadido');
let prodAgregado = d.getElementById('prodAgregado');
let bool = false;
//Agregar producto a localStorage
agregarProd.onclick = function(){
    let libro = this.dataset.name;
    let costo = parseInt(this.dataset.val);
    alert.style.display = 'block';
    prodAgregado.innerHTML = `Libro añadido a carrito: <b>${libro}</b> - Precio: $${costo}`;
    contProd++;
    let prodExistente = carrito.Productos.indexOf(libro);
    if(prodExistente != -1){
        carrito.Cantidad[prodExistente]++;
    } else {
        carrito.Productos.push(libro);
        carrito.Precio.push(costo);
        carrito.Cantidad.push(1);
    }
    carrito.Total = parseInt(carrito.Total) + costo;
    localStorage.carrito = JSON.stringify(carrito);
    let total = 0;
    carrito.Cantidad.forEach((val) => {total = total+val});
    MostrarAlerta();
}
//Timer para que se oculte alerta de producto añadido
function MostrarAlerta(){
    if(bool){
        clearTimeout(timer);
    }
    bool = true;
    timer = this.setTimeout(() => {
        alert.style.display = 'none';
    }
    ,2000);
}
