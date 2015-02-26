#!/bin/sh

IMAGE_NAME=httpd
IMAGE_TAG=$(date +%Y-%m-%d_%s)

docker build -t ${IMAGE_NAME}:${IMAGE_TAG} .
docker tag -f ${IMAGE_NAME}:${IMAGE_TAG} ${IMAGE_NAME}:latest

if [ $? -eq 0 ] ; then
        docker kill ${IMAGE_NAME}
        docker attach ${IMAGE_NAME} >> /dev/null 2>&1
        docker rm ${IMAGE_NAME}
        docker run --name ${IMAGE_NAME} -p 80:80 -d ${IMAGE_NAME}:${IMAGE_TAG}
else
	echo "BUILD FAILED: $? ($!)"
fi
