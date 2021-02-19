FROM openjdk:8-jdk-alpine
MAINTAINER marek
WORKDIR /
ADD RandomInt.jar /home/random_int/RandomInt.jar
EXPOSE 8080
CMD ["java","-jar","/home/Docker_workdir/RandomInt.jar"]

