# Gobierno mexicano y la red Tor 

## Reporte de la accesibilidad de los sitios gubernamentales mexicanos desde la red Tor. 

El presente informe es un ejercicio de revisión sistemática sobre la relación de la red Tor y el gobierno mexicano. Principalmente muestra los sitios web que no son accesibles desde la red Tor por configuraciones o políticas implementadas por la Administración Pública Federal. Los hallazgos y resultados que usted encontrará son producto de un monitoreo regular entre el año 2020 al mes de octubre de 2023.

# Contexto legal y político

México registra a diario entre 30 a 40 mil personas usuarias de la red Tor, según las estimaciones y datos provistos por la propia red Tor (Metrics 2023). La red Tor es un proyecto mundial global que tiene como objetivo ofrecer alternativas de acceso a personas que quieren ejercer libertad de acceso y expresión en la internet manteniendo su privacidad y anonimato. La organización civil detrás del proyecto Tor Project se plantea como misión promover los derechos humanos y las libertades mediante la creación y el despliegue de tecnologías de anonimato y privacidad de software libre y código abierto. 

La legislación mexicana contempla y reconoce el ejercicio del derecho a la privacidad y acceso a Internet, intercambio de información, libertad de expresión y manifestación de ideas que otorgan el artículo 6o Constitucional y el artículo 191 fracción XV de la Ley Federal de Telecomunicaciones y Radiodifusión en México. Sin embargo la legislación también cuenta con disposiciones que han sido señaladas internacionalmente como contrarias a los derechos humanos en el contexto digital, uno de estos ejemplos es el artículo 190 que preeve retención de datos por parte de los operadores de telecomunicaciones. 

En materia de libertad de expresión el reporte Freedom on the net (Freedom on the Net 2023) coloca a México como parcialmente libre. Los criterios que utiliza para esta conclusión son; obstáculos de acceso, limitaciones a contenidos y violaciones de derechos a usuarios. La organización Artículo 19 documenta del año 2000 a la fecha 162 asesinatos de periodistas, de estos, 42 se han registrado durante el gobierno actual de Andrés Manuel López Obrador y 47 en el mandato anterior de Enrique Peña Nieto.


En México la red Tor ha sido impulsada por proyectos de la sociedad civil y colectivos entre los que se encuentran la implementación de buzones anónimos en redacciones periodísticas, autodefensa y cuidados digital, en el trabajo de la defensoría de derechos humanos. 

También se han sumado otras propuestas de carácter gubernamental, como el buzón de la Secretaría de la Función Pública.

En los últimos tres años México ha alcanzado un tope de contribución a la red Tor de 45 MiB/s de ancho de banda (Fuente: Tor Metrics, febrero 2022), con un total de más de 20 nodos distribuidos en centro y occidente del país. Colocándose así en el país con en primer lugar de contribución en ancho de banda a la red Tor en América Latina y el Caribe. Nodos que son alojados por universidades públicas, organizaciones sociales. 

# Planteamiento del problema

La red Tor tiene en su diseño una arquitectura que proveé de mecanismos de privacidad y anonimato a nivel capa de red. Sin embargo hay conocimiento de obstrucciones para su uso en infraestructura gubernamental dispuesta para el acceso a servicios públicos en México, por ejemplo para consultar recursos relativos a transparencia o acceso a la información. Estas obstrucciones pueden arribar en inaccesibilidad para las personas que han decidido consultar información pública por medio de la red Tor, para lograr su privacidad y anonimato. Por ello el reporte muestra las obstrucciones, su tipo, y las dependencias responsables, por medio de un monitoreo longitudinal desde 2020. 

# Metodología de monitoreo

* Construimos una lista de los principales sitios de Gobierno Federal. Base de datos(federal.csv) que contiene 220 urls de 17 secretarias, Fiscalía General de la República, Consejería Jurídica del Ejecutivo Federal y Presidencia.

* Realizamos pruebas automatizadas diarias, desde 2019, de conexión desde la red Tor a los sitios previamente listado en la base de datos construida 

* Extraimos la lista de las urls que resultaron con sospecha de bloqueo 

* Procedimos a verificar manualmente los sitios y en su caso la confirmación de los que tuvieran alguna medida de bloqueo

* Finalmente consultamos a gobierno federal los motivos de las medidas de bloqueo documentadas y encontradas

# Resultados 

Los 468 ciclos de prueba registrados mismos que posteriormente fueron verificados manualmente resultaron en 21 dependencias con URLs bloqueadas.

Listado de dependencias con URLs bloqueadas

# Análisis

Descripción de base de datos 

* Total de urls considerados para el estudio: 217 URLs
* Total de dominios considerados para el estudio: 25

Resultados obtenidos y verificados

* Urls que presentan bloqueo: 39
* Dominios que presentan bloqueo: 14
* Total de dependencias con urls bloqueadas: 21


## Recursos compartidos bloqueados

Gobierno federal cuenta con recursos compartidos entre dependencias para facilitar trámites, servicios y acceso a la información. 

### www.gob.mx 

El dominio www.gob.mx resultado bloquedado e inacesible desde la red Tor. Dominio que es la principal ventana de información para el Gobierno de mexico, en donde logramos encontrar recursos informativos inaccesibles de 22 dependencias de gobierno. 

### datos.gob.mx 

El dominio datos.gob.mx resultó bloquedado e inacessaible desde la red Tor. Dominio que es utilizado para poner recursos de Datos Abiertos de 280 instituciones gubernamentales.


# Estándares y criterios técnicos para el manejo de datos 

La conducción y diseño de la investigación se realizó con apego a los criterios que estable la Junta de seguridad de la investigación del Proyecto Tor. Pautas que estable el Proyecto Tor para la realización de una investigación responsable. 

## Beneficios y riesgos 

Las medidas para abordar los riesgos que puede implicar el manejo de datos, las mediciones se realizaron sobre infraestructura dedicada y habilitada exclusivamente para la pruebas. La base de datos que se construyó de URLs corresponde a un listado organizado de recursos de caracter público.

El principal objetivo de la investigación y metodología se sostiene en la búsqueda de documentación de medidas y obstrucciones para quienes han decidido ejercer su derecho a la privacidad y al anonimato, al hacer uso de la red Tor, para acceder a información de caracter pública puesta a disposición por el Gobierno federal mexicano.

## Consideraciones y limitaciones 


* Durante nuestro monitoreo fueron deshabilitados o removidos algunos sitios web
* Todos los casos que resultaron sospechosos fueron confirmados por multiples circuitos de la red Tor
* Se dio prioridad a los sitios relativos a acceso a la información
* Las pruebas fueron realizadas tanto en su versión automatizada como en su verificación manual directamente a las URLs. Los dominios se agregan como referencia de lectura para acompañar el reporte.


# Anexos 

## Listado completa de dependencias consideradas en el estudio 

* Secretaría de Gobernación
* Secretaria de Relaciones Exteriores
* Secretaría de la Defensa Nacional de México
* Secretaría de Marina
* Secretaría de Hacienda y Crédito Público
* Secretaría de Bienestar
* Secretaría de Medio Ambiente y Recursos Naturales
* Secretaria de Energia
* Secretaría de Educación Pública
* Secretaria de Agricultura y Ganaderia
* Secretaría de Comunicaciones y Transportes
* Secretaría de la Función Pública
* Secretaría de Salud
* Secretaría del Trabajo y Previsión Social
* Secretaría de Desarrollo Agrario, Territorial y Urbano
* Secretaría de Turismo de México
* Secretaría de Cultura
* Fiscalía General de la República
* Consejería Jurídica del Ejecutivo Federal
* Presidencia 

### Base de datos 

* federal.csv

### Solicitudes de transparencia 

* Número de solicitud de transparencia: 331000123001457


# Referencias 

México - Metrics -Tor Project 
https://metrics.torproject.org/

Freedom on the net, 2023
https://freedomhouse.org/country/mexico/freedom-net/2023

Periodistas asesinados en México, en relación con su labor informativa
https://articulo19.org/periodistasasesinados/

Gistwatch 2014 Communications surveillance in the digital age - México  
https://www.giswatch.org/es/country-report/communications-surveillance/mexico

Red de Periodistas de a Pie 
https://twitter.com/periodistasapie/status/1245858520202768384

Función Pública lanza plataforma para alertar sobre casos de corrupción
https://www.eleconomista.com.mx/tecnologia/Funcion-Publica-lanza-plataforma-para-alertar-sobre-casos-de-corrupcion-20190724-0063.html


Research Safety Board, What are the safety guidelines?
https://research.torproject.org/safetyboard/#guidelines


# Autores

- Jacobo Nájera
- Miguel Trujillo
