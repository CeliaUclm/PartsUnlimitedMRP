#!/bin/bash
#no lanzar el .jar hasta que no esté accesible el servicio de mongdb
#el host 'mongo' tendra una ip otorgada al lanzar la pila de #servicios, 
#y le damos el apodo 'mongo', utilizado aqui y en el #archivo application.properties

while ! curl http://mongo:27017/
do
  echo "$(date) - still trying"
  sleep 1
done
echo "$(date) - connected successfully"

java -jar usr/local/app/ordering-service-0.1.0.jar -spring.config.location=application.properties
