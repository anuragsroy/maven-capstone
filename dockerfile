FROM httpd
WORKDIR /app
RUN apt update
RUN apt install -y openjdk-17-jdk
COPY target/. /app
CMD ["java", "-jar", "HelloApp-0.0.1-SNAPSHOT.jar"]
EXPOSE 8786
