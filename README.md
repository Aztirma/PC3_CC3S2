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

Pregunta: ¿Qué datos de semilla se insertaron y dónde se especificaron? 




