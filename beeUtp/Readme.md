Requerimientos para el funcionamiento de la app en el servidor:
* Django channels
* Daphne
* docker para redis
* PostgreSQL


Preguntas:
* Dentro de la trama como puedo yo identificar a que colmena o a que nodo en particular pertenecen los datos que llegan en los fields
* que configuración se hace en el think speak para que lo que llega corresponda con lo que se tiene creado
* A traves del API KEY el dispositivo sabe a que topologia de la aplicación esta asociado y cada nodo es un nodo independiente
* Que pasa si no coincide lo que se creo en el canal con los datos que se estan enviando por la url
* La información que se envia se guarda primero en la bd y luego se grafica? 
* si muestra las graficas en tiempo real?

Para correr la aplicación en local:
* activar el entorno virtual que tiene instalados todos los requirements
.\venv\Scripts\activate 
* correr la instancia docker desde docker y desde la consola
docker run --rm -p 6379:6379 redis:7
* Para el H14 correr el comando: heroku ps:scale web=1
