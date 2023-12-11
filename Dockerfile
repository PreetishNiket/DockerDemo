FROM adoptopenjdk:17-jre-hotspot
EXPOSE 9001
WORKDIR /app

COPY target/docker-demo-0.0.1-SNAPSHOT.jar /app/docker-demo-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java", "-jar", "docker-demo-0.0.1-SNAPSHOT.jar"]
