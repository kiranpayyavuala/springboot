FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD target/springbootdockerexample-0.0.1-SNAPSHOT.jar /app.jar
RUN sh -c 'touch /app.jar'
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Dspring.profiles.active=docker -jar /app.jar" ]
