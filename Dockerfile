FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
COPY target/Demo-deployment-on-render-0.0.1-SNAPSHOT.jar Demo-deployment-on-render-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/Demo-deployment-on-render-0.0.1-SNAPSHOT.jar"]