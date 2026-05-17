FROM eclipse-temurin:21

WORKDIR /app

COPY . .

RUN javac App.java

CMD ["java", "App"]
