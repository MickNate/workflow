# STAGE 1: Build the application
# Use a Maven image with JDK to compile the source code
FROM maven:3.8.4-openjdk-17-slim AS build
WORKDIR /app

# Copy the pom.xml and source code to the container
COPY pom.xml .
COPY src ./src

# Package the application (skipping tests for speed)
RUN mvn clean package -DskipTests

# STAGE 2: Create the final runtime image
# Use a slim JRE image to reduce the final image size
FROM openjdk:17-jdk-slim
WORKDIR /app

# Copy only the built JAR file from the 'build' stage
# Update 'my-app-1.0.jar' to match your project's output filename
COPY --from=build /app/target/*.jar app.jar

# Run as a non-root user for better security
RUN useradd -m myuser
USER myuser

# Expose the application port (standard for Spring Boot)
EXPOSE 8080

# Execute the application
ENTRYPOINT ["java", "-jar", "app.jar"]
