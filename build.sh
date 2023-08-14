#!/bin/bash
VERSION="java22"

## Build image
docker build -t darlon/openjdk:${VERSION} .

docker tag darlon/openjdk:${VERSION} darlon/openjdk

## Push image to DockerHub
docker login
docker push darlon/openjdk:${VERSION}
docker push darlon/openjdk