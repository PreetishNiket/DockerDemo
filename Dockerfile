FROM openjdk:11
EXPOSE 8110
WORKDIR /app

COPY target/DockerDemo-0.0.1-SNAPSHOT.jar /app/DockerDemo-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "DockerDemo-0.0.1-SNAPSHOT.jar"]
