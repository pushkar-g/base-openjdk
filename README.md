# Run build.sh

`build.sh` provided to simplify creating a base image.

# Docker tagged images

Provide ability to create and use container images where we can manage any updates. The issue being that any breaking
change in a Docker image could prevent a production release. It is therefor better practise to rebuild our own images
from time to time, when we have time to handle any issues.

## To check container sizes

```bash
docker image ls
```

## To create an image
```bash
docker build -t="8u171-jre-alpine3.7" .
```

## To tag an image
```bash
docker tag 8u151-jre-alpine3.7-glibc:latest bncprojects/openjdk:8u151-jre-alpine3.7
```

## To push an image
_You'll have to login to Docker Cloud and be a member of the bncprojects organization_
* A [Docker cloud](https://cloud.docker.com) account is free to create.

```bash
docker login
```

```bash
docker push bncprojects/openjdk:8u171-jre-alpine3.7
```

## Or just run the build script
```bash
./build.sh
```

## Then update the docker images to use the new image
```dockerfile
FROM bncprojects/openjdk:8u171-jre-alpine3.7
```

## Or to run the image image
```dockerfile
docker pull bncprojects/openjdk:8u171-jre-alpine3.7
```

# GLIBC image
Since Alpine ships without glibc, we have put together an image with glibc added in. This is specifically for use with AWS libraries that are built with C libraries with GLIBC dependencies.
```dockerfile
FROM bncprojects/openjdk:8u171-jre-alpine3.7-glibc
```
