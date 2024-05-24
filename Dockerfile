# Use the official Maven image to build the application
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Use the official OpenJDK image to run the application
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/cve-2023-34034-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 9090
ENTRYPOINT ["java", "-jar", "app.jar"]
