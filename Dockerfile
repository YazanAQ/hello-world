# Use a base image with Java pre-installed
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source file from the host machine's desktop to the container
COPY /Users/yaq/Desktop/App/src/App.java /app/

# Compile the Java source file
RUN javac App.java

# Command to run the Java program
CMD ["java", "App"]
