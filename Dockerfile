FROM maven:3.2-jdk-7
MAINTAINER Ivan Pedrazas <ipedrazas@gmail.com>

RUN  \
  export DEBIAN_FRONTEND=noninteractive && \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y git npm

RUN git clone https://github.com/apache/incubator-zeppelin.git /zeppelin

WORKDIR /zeppelin

RUN mvn clean package -Pspark-1.4 -Dhadoop.version=2.2.0 -Phadoop-2.2 -DskipTests

EXPOSE 8080

CMD ["bin/zeppelin.sh", "start"]
