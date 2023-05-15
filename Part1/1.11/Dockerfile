FROM openjdk:8-jdk-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY mvnw .
COPY .mvn .mvn

COPY . .


RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
