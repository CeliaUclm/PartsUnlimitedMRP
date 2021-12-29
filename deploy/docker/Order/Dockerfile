FROM openjdk:8-jre

MAINTAINER juliens@microsoft.com

RUN mkdir -p /usr/local/app

#WORKDIR /usr/local/app

#copiar el .jar del servicio a la imagen.
# No se indica el nombre porque las versiones pueden cambiar
COPY drop/*.jar /usr/local/app/

#copiar script que se ejecutará al lanzar el contenedor
COPY drop/run.sh usr/local/app/run.sh

#Si ejecutaramos la imagen en local, este servicio tendria acceso
#local a la ip del host de Mongo. Pero como lanzaremos como una pila
#la ip de mongodb no se puede descubrir al menos que se la pasemos
#en un archivo de propiedades.
COPY drop/application.properties application.properties

EXPOSE 8080

ENTRYPOINT sh usr/local/app/run.sh
