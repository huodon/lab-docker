FROM ubuntu:latest
MAINTAINER huodong <huodon@gmail.com>
# lab:base
# ------------------------------------------------------------------
ADD ./etc/apt/sources.list /etc/apt/sources.list
ENV DEBIAN_FRONTEND noninteractive
RUN /usr/bin/apt-get update && \
	apt-get upgrade -y && \
	/usr/bin/apt-get install -y wget  curl software-properties-common && \
	apt-get clean
ENV PATH /usr/local/bin:$PATH