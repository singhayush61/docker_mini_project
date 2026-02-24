FROM maven: maven:3.8.4-openjdk-17

WORKDIR /src:

COPY . /src:

RUN mvn clean install -DskipTests=true

EXPOSE 8080

CMD ["java", "-jar", "/src/target/bankapp.jar"]
