FROM ubuntu
CMD apt-get update
# To solve add-apt-repository : command not found
#RUN apt-get -y install software-properties-common
# Install Java
#RUN \
#  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
#  add-apt-repository -y ppa:webupd8team/java && \
#  apt-get update && \
#  apt-get install -y oracle-java8-installer --allow-unauthenticated && \
#  rm -rf /var/lib/apt/lists/* && \
#  rm -rf /var/cache/oracle-jdk8-installer
# Define commonly used JAVA_HOME variable
RUN apt-get update && apt-get install -y default-jdk
ENTRYPOINT /bin/bash
EXPOSE 8080
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle
COPY . /AWT04-WebService
