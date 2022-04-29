FROM adoptopenjdk/openjdk11:jdk-11.0.11_9-alpine
VOLUME /tmp
COPY ./build/libs/spring-cloud-k8s-demo-0.0.1-SNAPSHOT.jar app.jar
ENV AWS_ACCESS_KEY=AKIAWZA63HL2QMENEXST
ENV AWS_SECRET_KEY=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
ENV AWS_REGION=ap-south-1
ENTRYPOINT exec java -jar /app.jar --debug
