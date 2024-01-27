FROM openjdk:17-jdk-slim
LABEL authors="hajar"



WORKDIR /app

ENTRYPOINT ["top", "-b"]


COPY ./target/service_discovery-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8761

CMD ["java", "-jar", "service-discovery.jar"]




