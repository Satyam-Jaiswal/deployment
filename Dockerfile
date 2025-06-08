# Use an official OpenJDK image as the base
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the built jar to the container
COPY build/libs/library-management-system-1.0.0.jar app.jar

# Tell Render to use its own port
ENV PORT=8080

# Expose the port (optional for local)
EXPOSE $PORT

# Start the application
CMD ["sh", "-c", "java -Dserver.port=$PORT -jar app.jar"]
