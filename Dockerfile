# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
LABEL maintainer="rf.gholami@yahoo.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8081
EXPOSE 8082

# The application's jar file
ARG JAR_FILE=target/spring-boot-docker-sample-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} spring-boot-docker-sample.jar

# Run the jar file
ENTRYPOINT ["java","-Xdebug","-Xrunjdwp:server=y,transport=dt_socket,address=8082,suspend=n","-jar","/spring-boot-docker-sample.jar"]