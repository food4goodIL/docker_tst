FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080
ADD build/libs/docker-0.0.1-SNAPSHOT.jar docker_be.jar
ENTRYPOINT ["java","-jar","/docker_be.jar"]