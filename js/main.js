const d = document;
const button = d.getElementById('aniadir');
let sinConexion = d.getElementById('sin-conexion');
let liCategoria = d.getElementById('categoria');
let listProd = d.getElementById('listProd');
let liCarrito = d.getElementById('verCarrito');
let liInicio = d.getElementById('inicio');

window.addEventListener('load', function(){
    //Registro del service worker
    if('serviceWorker' in navigator){
        navigator.serviceWorker
            .register('sw.js')
            .then(res => console.log('Service Worker Registrado', res))
            .catch(err => console.log('Service Worker NO registrado', err))
    }

    //Cambios si el usuario está online u offline
    let EstadoOnline = () => {
        if(navigator.onLine){
            d.getElementById('sinConexion').style.display = 'none';
            if(sinConexion != undefined){
                sinConexion.style.display = 'none';
             }
             liCategoria.style.display = 'block';
             liCarrito.style.display = 'block';
             liInicio.style.display = 'block';
             if(button != undefined){
                button.disabled = false;
             }
        }
        else {
            d.getElementById('sinConexion').style.display = 'block';
            if(sinConexion != undefined){
               sinConexion.style.display = 'block';
            }
            liCategoria.style.display = 'none';
            liCarrito.style.display = 'none';
            liInicio.style.display = 'none';
            if(button != undefined){
                button.disabled = true;
             }
        }
    }
    EstadoOnline();
    //Detecta si el usuario está online u offline.
    window.addEventListener('online', EstadoOnline);
    window.addEventListener('offline', EstadoOnline);
    //Permiso para enviar notificaciones
    if(window.Notification && Notification.permission !== 'denied'){
       // setTimeout('NotificacionSuscripcion()', 10000);
       setTimeout('Notification.permission', 10000);
       console.log(Notification.permission);
    }
    //Variables globales
    let aviso;
    let mostrarAlerta = d.querySelector('.alerta');
    let compartirApp = d.querySelector('.compartir-app');
    //Compartir App
    if(compartirApp != undefined){
        if(navigator.share){
            compartirApp.addEventListener('click', e => {
                navigator.share({
                    title: 'Libroteca',
                    text: 'Encontrá ese libro que estás buscando en la mejor tienda.',
                    url: 'http://localhost/pwa/pwa-parcial-2-dwm3av-soler-julieta/'
                })
                .then(e => {
                    console.log(e);
                })
                .catch(err => {
                    console.log(err);
                })
            })
        }
        else {
            compartirApp.style.display = 'none';
        }
    }
    //Función para lanzar evento de instalación y escucha de rsta de usuario.
    let addToHomeScreen = () => {
        if(aviso){
            aviso.prompt();
            aviso.userChoice
            .then(res => {
                if(res.outcome == 'accepted'){
                    console.log('El usuario aceptó instalar la app');
                    mostrarAlerta.style.display = 'none';
                } else {
                    console.log('El usuario no aceptó instalar la app');
                }
                aviso = null;
            })
        }
    }
    let ShowAddToHomeScreen = () => {
        if(mostrarAlerta != undefined){
            mostrarAlerta.style.display = 'block';   
            mostrarAlerta.addEventListener('click', addToHomeScreen);
        }
    }
    //Escucha de evento para acceder al objeto de instalación
    window.addEventListener('beforeinstallprompt', e =>{
        e.preventDefault();
        aviso = e;
        ShowAddToHomeScreen();
    })
})

//Se crea carrito de compra
let carrito = {
    Productos: [],
    Cantidad: [],
    Precio: [],
    Total: 0
};

if(localStorage.carrito){
    carrito = JSON.parse(localStorage.carrito);
} else {
    localStorage.carrito = JSON.stringify(carrito);
}

let total = 0;
carrito.Cantidad.forEach((val) => {total = total+val});
let contProd = 0;



