# Build stage
FROM maven:3.9.3-eclipse-temurin-17 AS build
WORKDIR /workspace
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Runtime stage
FROM amazoncorretto:17-alpine
WORKDIR /usr/app
COPY --from=build /workspace/target/*.jar .
EXPOSE 9094
CMD ["java", "-jar", "springboot_app_docker1.jar"]

