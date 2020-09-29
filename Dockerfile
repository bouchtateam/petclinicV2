FROM openjdk:8
EXPOSE 8080
ADD target/*.jar petclinic.jar
ENTRYPOINT ["java","-jar","-DMYSQL_HOST=mysql","/petclinic.jar"]
