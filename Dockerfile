FROM openjdk:18-jdk-alpine

WORKDIR /app

#COPY  target/*.jar /app/app.jar
COPY build/libs/*.jar /app/app.jar

EXPOSE 8080

# 컨테이너가 실행될 때 무조건 실행해야하는 명령어을 지정하는 스크립트
ENTRYPOINT ["java", "-jar", "app.jar"]