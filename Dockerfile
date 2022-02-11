FROM openjdk:8-alpine
LABEL VERSION 0.3
LABEL MAINTAINER Anam Ahmed (anam.ahmed.a@gmail.com)

ENV APKTOOL_VERSION=2.6.0
RUN apk add --no-cache curl bash

WORKDIR /usr/local/bin

RUN curl -sLO https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool && chmod +x apktool
RUN curl -sL -o apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_${APKTOOL_VERSION}.jar && chmod +x apktool.jar

VOLUME ["/app"]

WORKDIR /app 

ENTRYPOINT ["apktool"]
