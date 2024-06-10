# Use a base image with Java runtime environment
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /java-ci-cd-app

# Copy the Gradle build output (the JAR file) to the container
COPY build/libs/*.jar /java-ci-cd-app/demo-0.0.1-SNAPSHOT-plain.jar

# Specify the command to run your application
CMD ["java", "-jar", "/java-ci-cd-app/demo-0.0.1-SNAPSHOT-plain.jar"]