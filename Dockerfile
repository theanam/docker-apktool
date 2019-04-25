FROM openjdk:8-alpine

RUN apk update && apk add curl bash

WORKDIR /usr/local/bin

RUN curl -sLO https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool && chmod +x apktool
RUN curl -sL -o apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.4.0.jar && chmod +x apktool.jar

VOLUME ["/app"]

WORKDIR /app 

ENTRYPOINT ["apktool"]
