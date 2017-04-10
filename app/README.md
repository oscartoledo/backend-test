#Backend Test

##Intrucciones para el Despliegue

* Para el despliegue de la aplicación de debe crear una base de datos en PostgreSQL 9.x con nombre ```backend-test_development``` y estar asignada al usuario "postgres" con contraseña "postgres" sin las ""
* En el directorio raíz de la Aplicación (backend-test)
    * Ejecutar el comando ``` bundle install ```
    * Ejecutar el comando ```rake db:migrate```
    * Para generar un juego de datos de prueba. Ejecutar el comando ```rake db:seed```
* Para desplegar el servidor, desde el mismo directorio (backend-test), ejecutar el comando ```bin/rails s```
* Poner el navegador en la dirección "http://localhost:3000"
