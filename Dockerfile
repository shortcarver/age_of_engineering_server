FROM amazoncorretto:8

WORKDIR /mc

COPY ./server /mc/

RUN curl https://maven.minecraftforge.net/net/minecraftforge/forge/1.10.2-12.18.3.2511/forge-1.10.2-12.18.3.2511-installer.jar > installer.jar

RUN ls -al

RUN java -jar installer.jar --installServer

RUN ls -al

EXPOSE 25565

CMD [ "java", "-jar", "forge-1.10.2-12.18.3.2511-universal.jar" ]