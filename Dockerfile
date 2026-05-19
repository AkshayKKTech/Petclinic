FROM eclipse-temurin:11-jre-jammy
EXPOSE 8080
COPY target/spring-petclinic-*.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
