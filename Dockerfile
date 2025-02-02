# Use a base image with Java 21
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

RUN mvn clean package -DskipTests

# Copy the Maven build files
COPY target/practice-0.0.1-SNAPSHOT.jar app.jar

# Expose port 8080
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]