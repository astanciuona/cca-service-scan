FROM openjdk:21-jdk-slim

WORKDIR /app

COPY target/cca-service-scan-1.0-SNAPSHOT.jar /app/

ENTRYPOINT ["java", "-jar", "/app/cca-service-scan-1.0-SNAPSHOT.jar.jar"]