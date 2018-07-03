#!/bin/bash

TAG="8u171-jre-alpine3.7-glibc"
docker build --file Dockerfile-withGlibc -t=${TAG} .
docker tag ${TAG}:latest bncprojects/openjdk:${TAG}
docker push bncprojects/openjdk:${TAG}
