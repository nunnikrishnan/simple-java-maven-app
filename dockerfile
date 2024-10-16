# Use Maven base image
FROM maven:3.9.0

# Set the working directory
WORKDIR /app

# Copy the pom.xml and source code
COPY pom.xml ./
COPY src ./src

# Package the application
RUN mvn -B -DskipTests clean package

# Expose a different port (e.g., 8081)
EXPOSE 8081

# Command to run the application
ENTRYPOINT ["java", "-jar", "target/*.jar"]
