FROM openjdk:17.0.8-slim
COPY target/springboot_app_docker1.jar /usr/app
WORKDIR /usr/app
ENTRYPOINT ["java","-jar", "springboot_app_docker1.jar"]
