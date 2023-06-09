#
#Build Stage
#
FROM maven:3.9.0-eclipse-temurin-17-alpine AS build
COPY . .
RUN mvn clean package -DskipTests

#
#Package Stage
#
FROM openjdk:18
COPY --from=build /target/gcp-0.0.1-SNAPSHOT.jar gcp.jar
#ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["java","-jar","gcp.jar"]