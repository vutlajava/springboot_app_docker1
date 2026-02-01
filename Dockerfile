FROM amazoncorretto:17-alpine
COPY target/springboot_app_docker1.jar /usr/app
WORKDIR /usr/app
CMD ["java", "-jar", "springboot_app_docker1.jar"]
