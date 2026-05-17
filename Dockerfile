FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

RUN javac App.java

CMD ["java", "App"]
