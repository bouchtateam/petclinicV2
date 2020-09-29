FROM openjdk:8
EXPOSE 8080
ADD target/*.jar petclinic.jar
ENTRYPOINT ["java","-jar","-DMYSQL_HOST=atakama_mysql.1.lf3cexxj6woue1pe5l4cl7h5o","/petclinic.jar"]
