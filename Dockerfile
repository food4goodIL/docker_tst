FROM openjdk:8-jdk-alpine
RUN ./gradlew build
VOLUME /tmp
EXPOSE 8080
ADD build/libs/docker-1.0-SNAPSHOT.jar docker_be.jar
ENTRYPOINT ["java","-jar","/docker_be.jar"]