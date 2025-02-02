# Use a base image with Java 21
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

# Copy the Maven build files
COPY ./ app/

RUN mvn clean package -DskipTests

# Expose port 8080
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]