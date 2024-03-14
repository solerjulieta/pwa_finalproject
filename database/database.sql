-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2022 a las 17:28:25
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`categoria_id`, `nombre`) VALUES
(1, 'Autoayuda'),
(2, 'Infantil y Juvenil'),
(3, 'Juvenil'),
(4, 'Ficción'),
(5, 'Infantil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `producto_id` int(10) UNSIGNED NOT NULL,
  `categoria_fk` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `sinopsis` text NOT NULL,
  `recomendado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`producto_id`, `categoria_fk`, `titulo`, `autor`, `imagen`, `precio`, `sinopsis`, `recomendado`) VALUES
(1, 4, 'Ayer', 'Agota Kristof', 'ayer.jpg', '1595.00', 'Una inolvidable novela de Agota Kristof, la autora de la trilogia Claus y Lucas. Sandor Lester, exiliado en una fría ciudad europea, lleva una vida solitaria y monótona. Inmerso en una rutina alienante en la fábrica de relojes donde trabaja, pasa sus ratos libres escribiendo, frecuentando a gente en su misma situación o en companía de Yolande, una mujer a la que no ama. Un día conoce a Line, una nueva empleada de la fábrica que procede de su mismo país. Aunque está casada y tiene una hija de corta edad, Sandor se enamorará de la recién llegada y entre los dos surgirá un vínculo tan íntimo y esencial como doloroso y destructivo. Al igual que su famosa trilogía Claus y Lucas, esta novela contiene ecos de la propia biografía de Agota Kristof, escritora hungara refugiada en Suiza. En ella utiliza una prosa perfectamente depurada, precisa y despersonalizada con la que crea una penetrante y perturbadora atmósfera para retratar las miserias y crueldades del mundo contemporáneo. Lúcida e impactante, Ayer es sin duda una de las mejores obras de la autora.', b'0'),
(2, 1, 'Brota', 'Guillermina Lopata', 'brota.jpg', '1900.00', 'A veces, el dolor, el hartazgo, el aburrimiento, la tristeza o el enojo abren un ciclo de cambio para que comiences a brotar. Brota es magia poderosa, con rituales para fortalecer tu trabajo interior. Brota es un viaje de valentía hacia tu esencia y tu poder. Brota es una aventura transformadora para crear la vida que deseas. Guillermina Lopata, psicóloga y especialista en saberes integrados (magia, chamanismo, cosmovisiones no tradicionales y espiritualidad), te propone una reconexión profunda con tu niña interior. Así lograrás sanar el pasado y dejar de existir para comenzar a vivir. Encuentra las herramientas para ser tu propia maga y atrévete a brotar. Incluye 39 ejercicios para que lleves tu magia a la acción.', b'0'),
(3, 4, 'Caraval', 'Stephanie Garber', 'caraval.jpg', '2190.00', 'Bienvenidos a Caraval, donde nada es lo que parece... Scarlett no ha salido nunca de la diminuta isla de Trisda, donde sueña con las maravillas de Caraval, una celebración anual de una semana de duración en la que el público puede participar del espectáculo. Caraval es magia. Misterio. Aventura. Y para Scarlett y su querida hermana Tella, representa la libertad y una forma deescapar de su despiadado padre. Cuando las hermanas reciben al fin las ansiadas invitaciones para Caraval, parece que sus sueños se han hecho realidad. Pero Tella desaparece momentos despues de su llegada, secuestrada por el organizador del espectáculo, Legend. Scarlett tiene entendido que todo lo que sucede en Caraval es una compleja ilusión. Sin embargo, pronto se ve sumida en peligroso juego repleto de amor, magia y desconsuelo. Real o no, deberá encontrar a Tella antes de que termine el juego o perdera a su hermana para siempre. Recuerda que solo es un juego. Lo que suceda al otro lado de esta puerta podra asustarte o emocionarte, pero no permitas que te engañe.', b'0'),
(4, 4, 'El Mentalista', 'Camila Lackberg', 'el-mentalista.jpg', '3500.00', 'En un parque de atracciones a las afueras de Estocolmo aparece el cuerpo de una joven asesinada de forma macabra: atravesada por múltiples espadas dentro de una caja. La agente de policía Mina Dabiri, reservada y metódica, forma parte del equipo especial de investigación que se hace cargo del caso. Cuando Mina agota todas las posibles pistas, recurre al conocido mentalista Vincent Walder para que los ayude a detectar los indicios que podrían conectar el asesinato con el mundo del ilusionismo. Con la aparición de un nuevo cuerpo, Mina y Vincent entienden que se enfrentan a un despiadado asesino en serie y comienzan una trepidante carrera contrarreloj para descifrar los códigos numéricos y las trampas visuales de una mente brillante y perversa. Un apasionante viaje a la parte más oscura del alma humana que no dejará indiferente a ningún lector. Atrévete a descubrir la verdad.', b'0'),
(5, 2, 'El Principito', 'A. Saint-Exupéry', 'el-principito.jpg', '1490.00', 'Viví así, solo, sin nadie con quien hablar verdaderamente, hasta que tuve una avería en el desierto del Sahara, hace seis años. Algo se había roto en mi motor. Y como no tenía conmigo ni mecánico ni pasajeros, me dispuse a realizar, solo, una reparación difícil. Era, para mí, cuestión de vida o muerte. Tenía agua apenas para ocho días. La primera noche dormí sobre la arena a mil millas de todatierra habitada. Estaba más aislado que un náufrago sobre una balsa en medio del océano. Imaginaos, pues, mi sorpresa cuando, al romper el día, me despertó una extraña vocecita que decía: -Por favor... ¡dibújame un cordero! -¿Eh!? -Dibújame un cordero..', b'0'),
(6, 1, 'Encambio', 'Estanislao Bachrach', 'encambio.jpg', '2649.00', 'Este año cambio de trabajo, empiezo el gimnasio, bajo esos kilitos de más, aprendo un idioma nuevo... Cambiar. Esa es la cuestión. A veces te da tanto miedo no lograrlo que ni siquiera lo intentás. Vivís en piloto automático, reaccionando a las diversas situaciones del día a día casi sin pensar. Algunos de estos comportamientos te hacen eficiente, pero otros son detractores de eso que querés hoy para vos. EnCambio te va a permitir alumbrar los procesos por los cuales pensás, sentís y te comportás de determinada manera, y así dejar atrás aquellos hábitos y conductas que ya no te sirven. El objetivo es que aprendas el potencial que tiene tu cerebro para cambiar y la capacidad que tenés vos para modificarlo. Con ÁgilMente, Estanislao Bachrach llevó el conocimiento científico del cerebro a la vida cotidiana de miles de lectores. EnCambio lo instala definitivamente como el gran divulgador de la biología de nuestro órgano más complejo y preciado.', b'0'),
(7, 5, 'Encanto', 'Disney', 'encanto.jpg', '2249.00', '¡La historia completa de Encanto; acompañada de hermosas ilustraciones!', b'0'),
(8, 1, 'Equilibrio', 'Daniel Lopez Rosetti', 'equilibrio.jpg', '2550.00', 'Con rigor, erudición, didactismo y amenidad, armado de literaturas, y también de estudios técnicos de última generación, el doctor Daniel López Rosetti nos explica cómo pensamos, cómo sentimos y cómo tomamos decisiones, en un largo y minucioso escaneo de nuestras conductas y nuestros grandes malentendidos. El resultado es un análisis clínico completo de la maquinaria secreta que nos maneja.', b'0'),
(9, 3, 'Heartstopper 2', 'Elizabeth Gilbert', 'heartstopper.jpg', '1599.00', 'Segundo tomo del webcómic fenómeno de Tumblr con miles de fans en todo el mundo. Nick y Charlie son mejores amigos. Nick sabe que Charlie es gay, y Charlie está seguro de que Nick no lo es. Pero los caminos del amor pueden ser sorprendentes, y Nick está descubriendo muchas cosas sobre sus amigos, su familia... y sobre sí mismo.', b'0'),
(10, 4, 'La Larga Marcha', 'Stephen King', 'la-larga-marcha.jpg', '2999.00', '«Todos los juegos son limpios si todo el mundo es engañado a la vez.» El escenario: una sociedad ultraconservadora que ha llevado al paroxismo sus rasgos más perversos, dominada por un estado policial. El acontecimiento: la más extraordinaria competición deportiva, una agotadora marcha a pie, sin ayudas, sin poder disminuir la velocidad, sin meta, donde un solo resbalón puede ser el último. Los competidores: cien adolescentes elegidos por sorteo decididos a pasar sobre los cadáveres de sus compañeros para ganar. El premio: fama y fortuna de por vida para el ganador, el último que quede en pie, el único superviviente. Solo uno triunfará. Los 99 restantes morirán.', b'0'),
(11, 1, 'Libera tu Magia', 'Elizabeth Gilbert', 'libera-tu-magia.jpg', '2849.00', 'Este libro es un relato inspirador, la ruta de acceso a esa vida con la que siempre has soñado. La mayoría de los seres humanos tenemos una faceta creativa que casi nunca conseguimos -o no queremos- desarrollar, por motivos prácticos o personales. Gilbert defiende la necesidad de explorar esa faceta para alcanzar una existencia plena, para lo cual es necesario superar el miedo (a hacer el ridículo, a perder el tiempo, a no ser tomado en serio) y abrazar la parte mística e intangible de la inspiración. La autora explica cómo tener una relación positiva con la propia creatividad, cómo ser disciplinado sin tomárselo demasiado en serio y cómo evitar las grandes expectativas pero, a la vez, no dejarse desanimar. Y asegura que cada pequeño acto cotidiano -hacer un dibujo, decorar la casa o practicar patinaje artístico- alimenta ese costado creativo, que debería formar parte orgánica de nuestras vidas. Al mismo tiempo, desmitifica totalmente la figura del artista atormentado. Defiende en cambio una actitud abierta, receptiva y positiva en busca de la inspiración como resultado de la curiosidad sana, la disciplina y la determinación, que permiten poner límites al ego para poder sobrellevar decepciones y fracasos. «La creatividad es sagrada y al mismo tiempo no lo es. Lo que hacemos importa muchísimo y al mismo tiempo no importa nada. Trabajamos en soledad, y nos acompañan espíritus. Estamos aterrorizados y somos valientes. El arte es una tarea abrumadora y un privilegio maravilloso. El trabajo quiere ser hecho, y quiere ser hecho por ti.»', b'0'),
(12, 4, 'Rayuela', 'Julio Cortázar', 'rayuela.jpg', '3499.00', '«En pleno contento precario, en plena falsa tregua, tendí la mano y toqué el ovillo París, su materia infinita arrollándose a sí misma, entonces no había desorden, entonces el mundo seguía siendo algo petrificado y establecido, un juego de elementos girando en sus goznes, una madeja de calles y árboles y nombres y meses.» En Rayuela (1963); Julio Cortázar supo condensar sus obsesiones estéticas, literarias y vitales a partir de un mosaico diverso, profundo, inagotable que, a su vez, refleja de forma maravillosa lo más esencial de su época. El amor turbulento de Oliveira y La Maga, los amigos del Club de la Serpiente, las impredecibles caminatas por París -la ciudad que promete el cielo pero puede conducir al infierno-, encuentran su contracara en la aventura protagonizada por Oliveira, Talita y Traveler en Buenos Aires. Rayuela es un libro único, abierto a múltiples lecturas, lúdico, complejo, lleno de riesgo y humor, de una originalidad sin precedentes y un talento innato para influir en las futuras generaciones.', b'0'),
(13, 5, 'Red La Novela', 'Disney', 'red-lanovela.jpg', '1900.00', 'Red trata sobre Mei, una chica de trece años un poco torpe pero segura de sí misma, que tiene que escoger entre vivir el caos de la adolescencia o ser una hija obediente. Además de los cambios propios de su edad (de sus intereses, relaciones y su cuerpo mismo), Mei comienza a transformarse en un panda rojo gigante cuando se desbordan sus emociones, ¡que es casi todo el tiempo!', b'0'),
(14, 3, 'Reino de Papel', 'Victoria Resco', 'reino-de-papel.jpg', '1799.00', 'Para quien la mire no es otra cosa que perfecta e inquebrantable. Popular. Bonita. Inalcanzable. Toda una profesional de la mentira. Pero cuando todo a su alrededor se vuelve un caos y los muros que tan perfectamente ha construido en su interior comienzan a resquebrajarse, un chico y su gato malhumorado entran como un rayo de sol a su cielo nublado y ponen su vida de cabeza. Aaron llena sus días de color y ruiseñores. Le muestra caras de sí misma que no sabía que tenía. Que la aterran. Que la increpan. Que la hacen desear ser esa chica que nunca creyó poder ser. ¿Podrá una nueva Aspen surgir de entre tanta oscuridad y tantas mentiras?', b'0'),
(15, 4, 'Volver a Mí', 'Laura G. Miranda', 'volver-a-mi.jpg', '2149.00', '¿Dónde queda la PASIÓN cuando todo en la vida es rutina y deber? ¿Es posible VOLVER a empezar? ¿Se puede volver a VIBRAR POR AMOR? Volver a mí retrata la vida de una mujer que cumplió todos los mandatos sociales: ser profesional, esposa y madre, pero que a fuerza de lograr los sueños ajenos olvidó los propios. A veces, perderse es la única forma de encontrarse.', b'0'),
(16, 2, 'HP Piedra Filosofal', 'J. K. Rowling', 'hp-piedrafilosofal.jpg', '2649.00', 'Harry Potter se ha quedado huérfano y vive en casa de sus abominables tíos y del insoportable primo Dudley. Se siente muy triste y solo, hasta que un buen día recibe una carta que cambiará su vida para siempre. En ella le comunican que ha sido aceptado como alumno en el colegio interno Hogwarts de magia y hechicería. A partir de ese momento, la suerte de Harry da un vuelco espectacular. En esa escuela tan especial aprenderá encantamientos, trucos fabulosos y tácticas de defensa contra las malas artes. Se convertirá en el campeón escolar de quidditch, especie de fútbol aéreo que se juega montado sobre escobas, y hará un puñado de buenos amigos... aunque también algunos temibles enemigos. Pero, sobre todo, conocerá los secretos que le permitirán cumplir con su destino. Pues, aunque no lo parezca a primera vista, Harry no es un chico común y corriente. ¡Es un verdadero mago!', b'0'),
(17, 2, 'HP Legado Maldito', 'J. K. Rowling', 'hp-legadomaldito.jpg', '2649.00', 'Ser Harry Potter nunca ha sido tarea fácil, menos aún desde que se ha convertido en un ocupadísimo empleado del Ministerio de Magia, un hombre casado y padre de tres hijos. Mientras Harry planta cara a un pasado que se resiste a quedar atrás, su hijo menor, Albus, ha de luchar contra el peso de una herencia familiar de la que él nunca ha querido saber nada. Cuando el destino conecte el pasado con el presente, padre e hijo deberán afrontar una verdad muy incómoda: a veces, la oscuridad surge de los lugares más insospechados. Esta edición especial del texto teatral acerca a los lectores la continuación del viaje de Harry Potter, sus amigos y familiares, inmediatamente después del estreno mundial de la obra en el West End de Londres el 30 de julio de 2016.', b'0'),
(18, 1, 'Calma Emocional', 'Bernardo Stamateas', 'calma-emocional.jpg', '1349.00', 'Hoy en día la ansiedad, la preocupación, el miedo parecen haberse convertido en una epidemia que produce daños tanto a nivel psicológico como físico. En este libro, Bernardo Stamateas nos describe los motivos que con frecuencia causan estados de temor y angustia en muchas personas. Entre otros: Vivo preocupado / Siento que no puedo / Me separé, tengo miedo al futuro / Estoy cansado, agotado y desgastado / Tengo miedo a enfermarme / Me preocupa no ser aceptado / Tengo miedo a hacer un cambio a esta altura de mi vida. Aunque todo a nuestro alrededor se vea oscuro, siempre podemos creer y declarar: «Este es mi momento». Porque las oportunidades no las determina un gobierno, ni una situación económica, ni la posición social ni ninguna otra cosa. Las oportunidades están a nuestra disposición siempre, así tenemos que creerlo y estar atentos para capturarlas. ¡Disfrutemos de la vida, mantengamos la alegría y alejemos para siempre los miedos, la ansiedad y las preocupaciones!', b'0'),
(19, 1, 'No amarás', 'Lorena Pronsky', 'no-amaras.jpg', '3049.00', 'Relaciones dependientes, no correspondidas, patológicas o violentas. Vínculos que disparan contra nuestra autoestima o la del otro, y nos muestran que hay lugares donde amar resulta un acto imposible. Historias de las que nos resistimos a retirarnos, aunque quedarnos nos lastime. (Des)amores que nos golpean, que nos dañan, pero que por alguna potente y misteriosa razón permanecen en nuestra vida. Patrones que se repiten, con un mismo principio y un mismo final. En contra de nuestro propio deseo. ¿Cuáles son los motivos que nos llevan a habitar una y otra vez esos espacios de dolor, a encaminarnos al mismo inexorable destino de frustración y padecimiento? En estas páginas Lorena Pronsky nos propone una búsqueda, un camino. Nos invita a averiguar quiénes somos, qué nos lleva a incurrir reiteradamente en comportamientos y zonas que nos hacen daño. Indagar, tratar de entender, conocer nuestra propia verdad para hacer posible un ejercicio saludable del amor. Mientras que esto no suceda, el final de tu cuento, hagas lo que hagas, intentes lo que intentes, siempre será el mismo. Ahí, justo ahí, NO AMARÁS.', b'0'),
(20, 2, 'HP Cámara Secreta', 'J. K. Rowling', 'hp-camara-secreta.jpg', '3449.00', 'Mientras Harry espera impaciente en casa de sus insoportables tíos el inicio del segundo curso del Colegio Hogwarts de Magia y Hechicería, un elfo aparece en su habitación y le advierte de que una amenaza mortal se cierne sobre la escuela. Harry no se lo piensa dos veces y, acompañado de Ron, se dirige a Hogwarts en un coche volador. Pero ¿puede un aprendiz de mago defender la escuela de los malvados que pretenden destruirla? Sin saber que alguien ha abierto la Cámara de los Secretos, dejando escapar una serie de monstruos peligrosos, Harry y sus amigos Ron y Hermione tendrán que enfrentarse con arañas gigantes, serpientes encantadas, fantasmas enfurecidos y, sobre todo, con la mismísima reencarnación de su más temible adversario.', b'0'),
(21, 4, 'Violeta', 'Isabel Allende', 'violeta.jpg', '3799.00', 'Violeta, la primera niña de una familia de cinco bulliciosos hermanos, viene al mundo un tormentoso día de 1920. Desde el principio su vida estará marcada por acontecimientos extraordinarios, pues todavía se sienten las ondas expansivas de la Gran Guerra cuando la gripe española llega a las orillas de su país sudamericano natal, casi en el momento exacto de su nacimiento. Gracias a la clarividencia del padre, la familia saldrá indemne de esta crisis para enfrentarse a una nueva, cuando la Gran Depresión altera la elegante vida urbana que Violeta ha conocido hasta ahora. Lo perderán todo y se verán obligados a retirarse a una región salvaje y remota del país. Allí Violeta alcanzará la mayoría de edad y tendrá su primer pretendiente... En una larga carta dirigida a una persona a la que ama por encima de todas las demás, Violeta rememora devastadores desengaños amorosos y romances apasionados, momentos de pobreza y también de prosperidad, pérdidas terribles e inmensas alegrías. Moldearán su vida algunos de los grandes sucesos de la historia: la lucha por los derechos de la mujer, el auge y la caída de tiranos y en última instancia, no una sino dos pandemias. Vista con los ojos de una mujer poseedora de una pasión, una determinación y un sentido del humor inolvidables que la sostienen a lo largo de una vida turbulenta, Isabel Allende nos regala, una vez más, una historia épica profundamente inspiradora y emotiva.', b'0'),
(23, 2, 'HP Caliz de Fuego', 'J. K. Rowling', 'hp-caliz-defuego.jpg', '9359.00', '«Habrá tres pruebas, espaciadas en el curso escolar, que medirán a los campeones en muchos aspectos diferentes: sus habilidades mágicas, su osadía, sus dotes de deducción y, por supuesto, su capacidad para sortear el peligro.» Se va a celebrar en Hogwarts el Torneo de los Tres Magos. Sólo los alumnos mayores de diecisiete años pueden participar en esta competición, pero, aun así, Harry sueña con ganarla. En Halloween, cuando el cáliz de fuego elige a los campeones, Harry se lleva una sorpresa al ver que su nombre es uno de los escogidos por el cáliz mágico. Durante el torneo deberá enfrentarse a desafíos mortales: dragones y magos tenebrosos, pero con la ayuda de Ron y Hermione, sus mejores amigos, ¡quizá logre salir con vida!', b'0'),
(24, 2, 'HP Orden del Fenix', 'J. K. Rowling', 'hp-orden-fenix.jpg', '6299.00', 'Las tediosas vacaciones de verano en casa de sus tíos todavía no han acabado y Harry se encuentra más inquieto que nunca. Apenas ha tenido noticias de Ron y Hermione, y presiente que algo extraño está sucediendo en Hogwarts. En efecto, cuando por fin comienza otro curso en el famoso colegio de magia y hechicería, sus temores se vuelven realidad. El Ministerio de Magia niega que Voldemort haya regresado y ha iniciado una campaña de desprestigio contra Harry y Dumbledore, para lo cual ha asignado a la horrible profesora Dolores Umbridge la tarea de vigilar todos sus movimientos. Así pues, además de sentirse solo e incomprendido, Harry sospecha que Voldemort puede adivinar sus pensamientos, e intuye que el temible mago trata de apoderarse de un objeto secreto que le permitiría recuperar su poder destructivo.', b'0'),
(25, 2, 'HP Prisionero Azkaban', 'J. K. Rowling', 'hp-prisionero-azkaban.jpg', '7349.00', 'Harry aguarda con impaciencia el inicio del tercer curso en el Colegio Hogwarts de Magia y Hechicería. Tras haber cumplido trece años; solo y lejos de sus amigos de Hogwarts, Harry se pelea con su bigotuda tía Marge, a la que convierte en globo, y debe huir en un autobús mágico. Mientras tanto, de la prisión de Azkaban se ha escapado un terrible villano, Sirius Black, un asesino en serie con poderes mágicos que fue cómplice de lord Voldemort y que parece dispuesto a eliminar a Harry del mapa. Y por si esto fuera poco, Harry debe enfrentarse también a unos terribles monstruos, los dementores, seres abominables capaces de robarles la felicidad a los magos y de borrar todo recuerdo hermoso de aquellos que osan mirarlos. Lo que ninguno de estos malvados personajes sabe es que Harry, con la ayuda de sus fieles amigos Ron y Hermione, es capaz de todo y mucho más.', b'0'),
(27, 3, 'Boulevard 1', 'Florencia Salvador', 'boulevard.jpg', '2199.00', 'Luke Howland, lleno de problemas y sumido en una desesperación profunda, y Hasley Weigel, tan despistada como optimista, no se ajustan al prototipo de pareja perfecta. Como si cada uno fuese un cielo, uno es tormenta y el otro, un día soleado: él es oscuridad. Ella, un rayo de sol. Y, sin embargo, juntos decidieron ponerle nombre a lo que habían creado: un boulevard teñido de tonos grisáceos y de azules celestes y eléctricos preparándose para la tormenta. Ella era para él y él era para ella. Los lectores dijeron: «Amé a Hasley; Luke y Neisan. Este libro es un boulevard de sueños rotos... literalmente». «No suelo llorar leyendo; pero esta vez ha sido inevitable». «Simplemente la historia más bonita que he leído nunca». «Ni todo el colirio del mundo puede rehidratarme los ojos después de tanto llorar». «Hay libros que marcan un antes y un después en la vida de cada lector; y este es el mío». «Es un libro precioso lleno de sentimientos y por encima de todo... de amor».', b'0'),
(28, 3, 'Loveless', 'Alice Oseman', 'loveless.jpg', '2699.00', 'Como la romántica empedernida fanática de los fanfiction que es, está segura de que muy pronto la situación va a cambiar. La universidad está a la vuelta de la esquina y allí tiene que encontrar el amor. Sin embargo; algo no cuaja. Cuánto más lo intenta, más lo fuerza. Y más confundida se siente. ¿Será que el romance no fue hecho para ella? ¿Acaso está destinada a vivir sin amar?', b'0'),
(29, 3, 'Nick y Charlie', 'Alice Oseman', 'nick-charlie.jpg', '1799.00', 'Todo el mundo sabe que Nick y Charlie son la pareja perfecta y que son inseparables, pero ahora que Nick se irá a la universidad y Charlie se quedará atrás, todos se preguntan si seguirán juntos. ¡Qué pregunta tan tonta! ¡Por favor! ¡Si son Nick y Charlie! Pero cuando la despedida se acerca, los dos jóvenes empezarán a cuestionarse si su amor es lo suficientemente fuerte para sobrevivir a la distancia. O si solo están retrasando lo inevitable... Porque todo el mundo sabe que el primer amor nunca es para siempre ¿O sí lo es?', b'0'),
(30, 3, 'Serendipity', 'Marissa Meyer', 'serendipity.jpg', '2699.00', '¿Acaso no vivimos por los clichés románticos? Amigos que se aman en secreto, enemigos que se desea y esos que fingen salir para causar celos. Por no hablar de los que descubren con sorpresa que solo hay una cama. O los que quieren expresar sus sentimientos con un gran gesto romántico destinado al fracaso. La fabulosa autora de Las crónicas lunares, Heartless y Renegados, Marissa Meyer, reúne a un combo explosivo de autores en esta antología que toma lo mejor de las historias de amor y lo reinterpreta.', b'0'),
(31, 5, 'Dias de playa', 'Margarita Maine', 'dias-de-playa.jpg', '1050.00', 'Novelas de aventuras en capítulos cortos, para que los primeros lectores tengan una de sus primeras experiencias inolvidables. El personaje, Fernán, es un niño inquieto, un poco miedoso, exagerado, y como si esto fuera poco, muy pero muy distraído.', b'0'),
(32, 5, 'Teo y Ana', 'Alexiev Gandman', 'teo-ana.jpg', '1550.00', 'Teo y Ana te invitan a descubrir los lugares más fascinantes de la Argentina, ¡y a buscar a los personajes y animales más divertidos! 64 páginas de diversión, a todo color Incluye datos curiosos de cada lugar.', b'0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `productos_categorias_fk_idx` (`categoria_fk`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `categoria_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `producto_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_categorias_fk` FOREIGN KEY (`categoria_fk`) REFERENCES `categorias` (`categoria_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
