# Use OpenJDK 11 as the base image
FROM openjdk:11-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the local App.java file into the container
COPY App.java /app

# Compile App.java inside the container
RUN javac App.java

# Run the compiled App class when the container is started
CMD ["java", "App"]
