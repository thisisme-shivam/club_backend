# Use an official OpenJDK runtime as a base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/application-0.0.1-SNAPSHOT.jar.jar /app/application-0.0.1-SNAPSHOT.jar

# Specify the command to run on container startup
CMD ["java", "-jar", "/app/application-0.0.1-SNAPSHOT.jar.jar"]
