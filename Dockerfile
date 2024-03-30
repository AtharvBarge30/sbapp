FROM maven:3.8.4-openjdk-11
MAINTAINER "Ashok"

WORKDIR /usr/app/

# Copy the entire project directory into the Docker image
COPY . /usr/app/

# Run Maven build
RUN mvn clean package

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/spring-boot-docker-app.jar"]
