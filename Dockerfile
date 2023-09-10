FROM openjdk:17-jdk-slim-buster
WORKDIR /app

COPY app/build/lib/* build/lib/

COPY app/build/libs/spring-example-1.jar build/

WORKDIR /app/build
ENTRYPOINT java -jar spring-example-1.jar