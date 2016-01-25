FROM fokkodriesprong/docker-spark
MAINTAINER Fokko Driesprong <fokko@driesprong.frl>

RUN mkdir /tmp/ \
  && chmod 777 /tmp/ \
  && update-ca-certificates -f

RUN wget -O ./bin/sbt https://raw.githubusercontent.com/paulp/sbt-extras/master/sbt \
  && chmod 0755 ./bin/sbt \
  && ./bin/sbt -v -211 -sbt-create about

RUN sbt

CMD sbt
