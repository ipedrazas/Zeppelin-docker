FROM java:7
MAINTAINER Ivan Pedrazas <ipedrazas@gmail.com>


RUN apt-get update && apt-get -y install git maven npm && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN git clone  https://github.com/NFLabs/zeppelin /zeppelin

WORKDIR /zeppelin
RUN mvn install -DskipTests -Dspark.version=1.3.0 -Dhadoop.version=2.3.0

EXPOSE 8080
EXPOSE 8081

CMD ["bin/zeppelin.sh", "start"]
