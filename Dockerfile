# Basis-Image mit Java Runtime
FROM eclipse-temurin:17-jre-alpine

# Arbeitsverzeichnis im Container
WORKDIR /app

# Kopieren des kompilierten Spring-Boot-JARs
COPY build/libs/*.jar app.jar

# Startbefehl für den Container
ENTRYPOINT ["java", "-jar", "app.jar"]