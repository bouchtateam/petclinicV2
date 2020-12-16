FROM openjdk:8
EXPOSE 8080
ADD target/*.jar petclinic.jar

ENV DOCKERIZE_VERSION v0.6.1
RUN  wget https://github.com/jwilder/dockerize/releases/download/v0.6.1/dockerize-alpine-linux-amd64-v0.6.1.tar.gz && \
     tar  -xzvf dockerize-alpine-linux-amd64-v0.6.1.tar.gz && \
     rm -rf dockerize-alpine-linux-amd64-v0.6.1.tar.gz

ADD dockerize /usr/local/bin/dockerize
RUN chmod +x /usr/local/bin/dockerize

ENTRYPOINT ["java","-jar","-DMYSQL_HOST=mysql","/petclinic.jar"]
