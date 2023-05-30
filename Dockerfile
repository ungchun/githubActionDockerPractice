#FROM adoptopenjdk:11-jdk-hotspot AS builder
#COPY gradlew .
#COPY gradle gradle
#COPY build.gradle .
#COPY settings.gradle .
#COPY src src
#RUN chmod +x ./gradlew
#RUN ./gradlew bootJar
#
#FROM adoptopenjdk:11-jdk-hotspot
#COPY --from=builder build/libs/*.jar app.jar
#
#EXPOSE 8080
#ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-jar","/app.jar"]

#FROM openjdk:17-alpine
#ARG JAR_FILE=/build/libs/sejongmate-0.0.1-SNAPSHOT.jar
#COPY ${JAR_FILE} /sejongmate.jar
#ENTRYPOINT ["java","-jar","-Dspring.profiles.active=prod", "/sejongmate.jar"]

FROM openjdk:17-jdk-slim
ADD /build/libs/*.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
