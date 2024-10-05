FROM openjdk:8-jdk-alpine

WORKDIR /app

COPY . /app

RUN ./mvnw clean install

COPY target/backend.jar app.jar

EXPOSE 9091

CMD ["java", "-jar", "app.jar"]