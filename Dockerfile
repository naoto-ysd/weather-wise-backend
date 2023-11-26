FROM openjdk:21-bullseye
RUN apt-get update && apt-get install -y findutils
WORKDIR /app
COPY . .
RUN ./gradlew build
CMD ["java", "-jar", "build/libs/weather-wise-backend.jar"]