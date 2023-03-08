FROM openjdk:11.0
WORKDIR /app
COPY /var/lib/jenkins/workspace/Demo-application/target/springboot-1.0.0.jar /app
EXPOSE 9090
CMD [ "java","-jar","springboot-1.0.0.jar" ]
