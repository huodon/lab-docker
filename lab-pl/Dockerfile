FROM lab:bast
MAINTAINER huodong <huodon@gmail.com>

WORKDIR /home


ENV JDK_URL http://download.oracle.com/otn-pub/java/jdk/8u11-b12/jdk-8u11-linux-x64.tar.gz
ENV SCALA_URL http://downloads.typesafe.com/scala/2.11.2/scala-2.11.2.tgz
ENV SBT_URL http://dl.bintray.com/sbt/native-packages/sbt/0.13.5/sbt-0.13.5.tgz
ENV JAVA_HOME /usr/local/JDK
ENV SCALA_HOME /usr/local/Scala
ENV LEIN_ROOT /.lein
ENV PATH $JAVA_HOME/bin:$SCALA_HOME/bin:/usr/local/sbt/bin:$PATH

# JDK
# ------------------------------------------------------------------
RUN \
	wget -qO- --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" $JDK_URL -O - | tar -xzvf - && \
	mv `ls` /usr/local/JDK

# Scala
# ------------------------------------------------------------------
RUN \
	wget -qO- $SCALA_URL -O - | tar -xzvf - && mv `ls` /usr/local/Scala && \
	wget -qO- $SBT_URL -O - | tar -xzvf - && mv sbt /usr/local/sbt

# Clojure
# ------------------------------------------------------------------
RUN \
	curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > /bin/lein && \
	chmod 755 /bin/lein && \
	/bin/lein

# Node
# ------------------------------------------------------------------
RUN \
	add-apt-repository ppa:chris-lea/node.js -y && \
	apt-get update && \
	apt-get install -y nodejs && \
	npm update -g && \
	apt-get clean

VOLUME ["/home/share"]
