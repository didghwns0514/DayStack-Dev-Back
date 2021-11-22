FROM openjdk:11-jdk
EXPOSE 5551
#ENTRYPOINT java -jar /build/libs/demo-0.0.1-SNAPSHOT.jar

ENV MYSQL_USERNAME=root \
    MYSQL_PASSWORD=d@12YinYang

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
