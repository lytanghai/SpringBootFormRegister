FROM openjdk:8-jdk-alpine

WORKDIR /app

RUN mvn clean install

COPY /target/backend.jar app.jar

EXPOSE 9091

CMD ["java", "-jar", "app.jar"]