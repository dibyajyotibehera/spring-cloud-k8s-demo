FROM adoptopenjdk/openjdk11:jdk-11.0.11_9-alpine
VOLUME /tmp
COPY ./build/libs/spring-cloud-k8s-demo-0.0.1-SNAPSHOT.jar app.jar
ENV AWS_REGION=ap-south-1
ENTRYPOINT exec java -jar /app.jar --debug
