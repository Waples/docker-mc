# syntax=docker/dockerfile:experimental

FROM openjdk:8

ENV JAVA_XMX=1024M
ENV JAVA_XMS=1024M

ADD https://launcher.mojang.com/v1/objects/35139deedbd5182953cf1caa23835da59ca3d7cd/server.jar /usr/src/minecraft/
COPY server.sh /usr/src/minecraft/server.sh
COPY eula.txt /usr/src/minecraft/eula.txt

WORKDIR /usr/src/minecraft/

EXPOSE 25565/tcp

ENTRYPOINT [ "./server.sh" ]
