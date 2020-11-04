FROM maven
  
RUN mkdir -p /code
WORKDIR /code

COPY ./src ./src
COPY ./pom.xml ./pom.xml
RUN mvn clean && mvn package

ENTRYPOINT ["java", "-cp", "./target/370team2-1.0-SNAPSHOT-jar-with-dependencies.jar","RestfulServer"]
