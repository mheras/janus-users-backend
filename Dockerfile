FROM openjdk:8-jdk-alpine
MAINTAINER mheras@gmail.com
VOLUME /tmp
EXPOSE 8080

RUN mkdir $HOME/app
WORKDIR $HOME/app

ADD "build/libs/janus-users-backend-0.0.1-SNAPSHOT.jar" app.jar

ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar app.jar