# Use a base image with OpenJDK 17 installed
FROM eclipse-temurin
# Set the working directory inside the container
RUN mkdir -p /home/app
WORKDIR /home/app
# Copy the packaged Spring Boot application JAR file into the container
COPY .  /home/app
ENV LD_LIBRARY_PATH=/home/app/x64
# Expose the port that the Spring Boot application will run on
RUN mkdir -p /root/.aws
RUN touch /root/.aws/config /root/.aws/credentials
EXPOSE 8080
# Command to run the Spring Boot application when the container starts
COPY nucleuzdlp-0.1.0.tgz /nucleuzdlp-0.1.0.tgz
CMD ["java", "-jar", "nucleuz-pii-date-classification-0.0.1-SNAPSHOT.jar"]

