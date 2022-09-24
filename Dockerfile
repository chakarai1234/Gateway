FROM eclipse-temurin:11
EXPOSE 9090
COPY ./target/*.jar /app/ms-gateway.jar
CMD ["java", "-jar", "/app/ms-gateway.jar","--spring.profiles.active=docker"]