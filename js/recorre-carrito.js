let vaciarCarrito = d.getElementById('vaciarCarrito');

recorreCarrito();
//Función para recorrer Carrito almacenado en LocalStorage
function recorreCarrito(){
    let tbody = d.getElementById('tBody');
    tbody.innerHTML = '';
    if(carrito.Productos.length == 0){
        let detalleCarrito = d.getElementById('detalleCarrito');
        detalleCarrito.style.display = 'none';
    } else {
        let carritoVacio = d.getElementById('carritoVacio');
        carritoVacio.style.display = 'none';
        let tdTotal = d.getElementById('total');
        for(let i=0; i < carrito.Productos.length; i++){
            let tr = d.createElement('tr');
            tbody.appendChild(tr);
            let td = d.createElement('td');
            tr.appendChild(td);
            td.innerHTML = `${carrito.Productos[i]}`;
            let td2 = d.createElement('td');
            td2.innerHTML = `${carrito.Cantidad[i]}`;
            tr.appendChild(td2);
            let td3 = d.createElement('td');
            td3.innerHTML = `$${carrito.Cantidad[i] * carrito.Precio[i]}`;
            tr.appendChild(td3);
            let td4 = d.createElement('td');
            let btnQuitar = d.createElement('a');
            btnQuitar.setAttribute('class', 'btn');
            btnQuitar.setAttribute('data-id', carrito.Productos[i]);
            btnQuitar.setAttribute('data-val', carrito.Precio[i]);
            btnQuitar.innerHTML = `<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
            <path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
            </svg>`
            td4.appendChild(btnQuitar); 
            tr.appendChild(td4);
            btnQuitar.onclick = function(){
                let libro = this.dataset.id;
                let precio = parseInt(this.dataset.val);
                let prodExistente = carrito.Productos.indexOf(libro);
                console.log(prodExistente);
                if(prodExistente != -1){
                    if(carrito.Cantidad[prodExistente] > 1){
                        carrito.Cantidad[prodExistente]--;
                        carrito.Total = parseInt(carrito.Total) - precio;
                        localStorage.carrito = JSON.stringify(carrito);
                        tdTotal.innerHTML = `$${carrito.Total}`;
                    }
                    else{
                       carrito.Cantidad[prodExistente]--;
                        carrito.Total = parseInt(carrito.Total) - precio;
                        carrito.Cantidad.splice(prodExistente, 1);
                        carrito.Precio.splice(prodExistente, 1);
                        carrito.Productos.splice(prodExistente, 1);
                        localStorage.carrito = JSON.stringify(carrito);
                        tdTotal.innerHTML = `$${carrito.Total}`;
                        tr.innerHTML = "";   
                        if(carrito.Productos.length == 0){
                            detalleCarrito.style.display = 'none';
                            carritoVacio.style.display = 'block';                 
                        }
                    }
                    recorreCarrito();
                }
            } 
            vaciarCarrito.onclick = function(){
                localStorage.clear();
                location.reload();                 
            }
        }
        tdTotal.innerHTML = `$${carrito.Total}`;
    }   
}

