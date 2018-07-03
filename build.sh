#!/bin/bash

TAG="8u171-jre-alpine3.7"
docker build -t=${TAG} .
docker tag ${TAG}:latest bncprojects/openjdk:${TAG}
docker push bncprojects/openjdk:${TAG}
