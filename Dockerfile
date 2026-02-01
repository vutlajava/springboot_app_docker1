FROM openjdk:17.0.8-jdk-slim
COPY target/springboot_app_docker1.jar /usr/app
WORKDIR /usr/app
CMD ["java", "-jar", "springboot_app_docker1.jar"]
