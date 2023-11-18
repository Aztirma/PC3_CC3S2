# Practica Calificada 3
Usaremos el proyecto del repositorio que se encuentra en https://github.com/saasbook/rottenpotatoes-rails-intro 

Ya teniendo clonado el repositorio , comenzaremos generando ramas para cada uno de los 
colaboradores que modificaran este proyecto : 

![image](https://github.com/Aztirma/PC3_CC3S2/assets/92898224/5aec1c83-2b16-4b2e-9e3c-974bf8cd084c)

Como buena practica en rails ejecutaremos bundle install para ver que las dependencias 
necesarias esten instaladas correctamente .

![image](https://github.com/Aztirma/PC3_CC3S2/assets/92898224/32a1b307-4a57-416c-9dc3-a5492baf62ab)

Luego de esto comenzaremos con las migraciones , ejecutando rake db:migrate 

![image](https://github.com/Aztirma/PC3_CC3S2/assets/92898224/593ba235-2265-40b4-9f9a-205f4574896c)

* Pregunta: ¿Cómo decide Rails dónde y cómo crear la base de datos de desarrollo?

Si revisamos los directorios del pryecto , veremos una carpeta llamada "cofig "
en esta carpeta se guardan algunas configuraciones del proyecto , en esta podemos encontrar el archivo database.yml en donde se muestra que adaptador de base de datos tendra , tambien muestra la ubicacion donde esta se encontrara y tambien si se genera un test o una base de datos de produccion ;

![image](https://github.com/Aztirma/PC3_CC3S2/assets/92898224/8604723a-ebdb-4dae-8501-07382a7edc4f)

* Pregunta ¿Qué tablas se crearon mediante las migraciones?

Si ingresamos al archivo creado cuando ejecutamos rake db:migrate , veremos que tenemos una tabla con columnas title , rating,description release_date 

![image](https://github.com/Aztirma/PC3_CC3S2/assets/92898224/01da58da-917f-47d6-a30e-abc03c413d34)

Luego , ejecutamos el comando rake db:seed para poder inssertar los datos que se encuentra en el archivo seeds.rb 

Si entramos en la consola y revisamos la tabla Movie , veremos que los datos han sido ingresado correctamente 

![image](https://github.com/Aztirma/PC3_CC3S2/assets/92898224/589c9c0c-abe3-455b-ad3b-527e9529af5d)

* Pregunta: ¿Qué datos de semilla se insertaron y dónde se especificaron? 

Estos datos estan especificados en el archivo seeds.rb , donde se encuentran los datos de peliculas 

Ya que tenemos todos los datos subidos a la tabla veamos como se ve con el servidor funcionando .

![image](https://github.com/Aztirma/PC3_CC3S2/assets/92898224/68329207-509b-4a4a-b5eb-553f5a0e3801) 


![image](https://github.com/Aztirma/PC3_CC3S2/assets/92898224/b5bbe5b6-ba96-4393-a3b5-b467cbdf4973)

## Parte 1 : filtrar la lista de peliculas por clasificacion 

Haremos modificaciones a las vistas dentro del proyecto para que tengamos una seleccion de peliculas , clasificandolas por su calificacion 


Incluimos los botones y la funcionalidad en las vistas del proyecto 

![image](https://github.com/Aztirma/PC3_CC3S2/assets/92898224/945da641-258e-465e-af0d-de1a5c6556b0)

como vemos , en las vistas aparecen 2 variables que no hemos visto anteriormente , estas serian @all_rating y ratings_to_show , para darle la funcionalidad completa tendremos que definirlas en los controladores 


![image](https://github.com/Aztirma/PC3_CC3S2/assets/92898224/0d0cd985-034c-4ad5-b844-246c4a74cc05)

Ya tenemos un pequeño avance , veamoslo ejecutando en un servidor local 

![image](https://github.com/Aztirma/PC3_CC3S2/assets/92898224/8a464438-3eb5-462c-b719-0009d02488ca)

Vemos que nos aparecen todas las casillas marcadas , y nos muestran todas las peliculas ,ahora si desmarcamos algunua de estas casillas y le damos a refresh , veremos que aun no nos muestra las peliculas por su clasificacion , tenemos que mover algunas cosillas 





