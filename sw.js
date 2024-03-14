const cacheName = 'libroteca-files';

const aArchivos = ['/', 
                   'img/favicon.ico',
                   'index.php',
                   'paginas/inicio.php', 
                   'css/bootstrap.css',
                   'css/estilos.css', 
                   'js/main.js', 
                   'js/bootstrap.bundle.min', 
                   'js/agregar-prod.js', 
                   'js/recorre-carrito.js',
                   'js/carousel.js'
                ]

self.addEventListener('install', event =>{
    self.skipWaiting();
    event.waitUntil(
        caches
            .open(cacheName)
            .then(cache => {
                cache.addAll(aArchivos); 
            })
    )
})

//Escucha e interceptación de las peticiones de la interfaz
self.addEventListener('fetch', event =>{
    event.respondWith( 
        caches
            .match(event.request) 
            .then(res => {
                if(res){ 
                    return res;
                }
                let requestToCache = event.request.clone();
                return fetch(requestToCache)
                    .then(res => {
                        if(!res || res.status !== 200){
                            return res;
                        }
                        let responseToCache = res.clone();
                        caches 
                            .open(cacheName)
                            .then(cache => {
                                cache.put(requestToCache, responseToCache);
                            })
                            return res;
                    }) 
            })
    )
})

//Escuchar evento push y mostrar una notificación
self.addEventListener('push', function(e) {
    let title = e.data.text(); 
    let options = { 
        body: '¿No sabés que hacer? ¡Leé un libro!', 
        icon: 'img/icon-192x192.png',
        vibrate: [300,100,300],
        data: { id: 1 }, 
        actions: [{'action' : '1',
                   'title': 'Ver',
                    'icon': 'img/ingresar.png'},
                    {'action' : '2', 
                   'title': 'Ver luego',
                    'icon': 'img/rechazar.png'}
                ]
            }
            e.waitUntil(self.registration.showNotification(title, options));
})

//Captura el clic del usuario sobre la notificación
self.addEventListener('notificationclick', function(e){
    if(e.action === '1'){
        console.log('Presionó el botón "Ver ahora"');
        clients.openWindow('http://localhost/pwa/pwa-parcial-2-dwm3av-soler-julieta/');
    } else if(e.action === '2'){
        console.log('Presionó el botón "Ver luego"');
    }
})