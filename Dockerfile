FROM java:7
MAINTAINER Ivan Pedrazas <ipedrazas@gmail.com>


RUN apt-get update && apt-get -y install git maven npm && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/apache/incubator-zeppelin.git /zeppelin

WORKDIR /zeppelin

RUN mvn clean package -Pspark-1.4 -Dhadoop.version=2.2.0 -Phadoop-2.2 -DskipTests

EXPOSE 8080

CMD ["bin/zeppelin.sh", "start"]
