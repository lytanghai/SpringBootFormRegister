# Use a JDK 8 image based on Alpine Linux
FROM openjdk:8-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the Maven project files and build the project
COPY . /app
RUN ./mvnw clean install -DskipTests

# Copy the compiled JAR file to the app directory
COPY target/backend.jar app.jar

# Expose the port that the application will run on
EXPOSE 9091

# Command to run the application
CMD ["java", "-jar", "app.jar"]