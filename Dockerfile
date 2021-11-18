FROM openjdk:11-jdk
EXPOSE 5551
ENTRYPOINT java -jar /build/libs/demo-0.0.1-SNAPSHOT.jar

#ARG JAR_FILE=build/libs/*.jar
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java", "-jar", "/app.jar"]
