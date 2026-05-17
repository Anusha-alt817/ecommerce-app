FROM openjdk:17-jdk-slim

WORKDIR /app

COPY . .

RUN javac App.java

CMD ["java", "App"]
