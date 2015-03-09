FROM java:7
MAINTAINER Ivan Pedrazas <ipedrazas@gmail.com>

RUN apt-get update && apt-get -y install git maven npm && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/NFLabs/zeppelin.git /zeppelin

WORKDIR /zeppelin

CMD ["build.sh"]
