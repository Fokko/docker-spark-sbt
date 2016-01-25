FROM fokkodriesprong/docker-spark
MAINTAINER Fokko Driesprong <fokko@driesprong.frl>

RUN mkdir /tmp/ && chmod 777 /tmp/ \
   && apt-get install -y apt-transport-https \
   && echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list \
   && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823 \
   && apt-get update \
   && apt-get install -y sbt

RUN sbt

CMD sbt
