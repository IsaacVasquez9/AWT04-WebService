# Task 04- Docker DevOps 1.0
**Update for Task03**
##What is Docker Compose?
```
Use yaml files to configure application services (docker-compose.yaml)
Can start all the services with a single command ( docker-compose up )
Can stop all the service with a single command ( docker-compose down )
Able to scale up the specific services when required.
```
## Mind Map Docker Compose
```
https://coggle.it/diagram/XYPhlxz2ijv2Evy0/t/-/e0214b4484d70b47c7c2360e53ec2e7400497422deca8d7c7da59f2d3379ee78
```
## Clone git Repository
```
git clone https://github.com/FerHinojosa/AWT04-WebService.git
git checkout develop
```
# WebService
This project consists in a format converter tool providing the services to convert video format i.e. .mp4 to .flv, image to text and image to pdf.
## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.
### Prerequisites
**Java JDK need to be installed**
**Installation:**
```
sudo apt-get update
sudo apt install openjdk-8-jre-headless
```
**Create a folder directory**
**Steps**
```
mkdir project
cd project
```
**Clone Git Project Repository**
**Steps**
```
**Install Docker**
**Steps**
```
Verify if you have installed Docker
docker --version
If not installed:
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```
git clone https://github.com/FerHinojosa/AWT04-WebService.git
git checkout develop
cd AWT04-WebService
```
### Installing
**Install and run the ubuntu image**
List all images and select by ID the image required to start
```
docker pull ubuntu
docker ps -a
docker start ID
```
**Dockerfile**
Be sure that the dockerfile is in the directory cloned and run
```
ls -la
docker build .
```
##Dockerfile ready
```
FROM ubuntu
LABEL isaacvasquez@fundacion-jala.org
RUN apt-get update
RUN apt install openjdk-8-jre-headless
COPY . /AWT04-WebService
```
