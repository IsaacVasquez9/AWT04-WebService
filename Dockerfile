FROM ubuntu
LABEL isaacvasquez@fundacion-jala.org
RUN apt-get update
RUN apt install openjdk-8-jre-headless
COPY . /AWT04-WebService
