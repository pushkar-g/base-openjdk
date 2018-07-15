FROM openjdk:8u171-jre-alpine3.8

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
ENV JAVA_TOOL_OPTIONS -Dfile.encoding=UTF8

RUN apk --no-cache add openntpd
