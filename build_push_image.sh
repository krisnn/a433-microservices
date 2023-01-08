#!/bin/bash

uname=krisnn #variable username untuk login

docker build --tag "krisnn/item-app:v1" . # perintah docker untuk melakukan build image

# perintah docker untuk melakukan login ke docker kemudian status login di masukan ke file process.log
echo $PASSWORD_DOCKER_HUB | docker login --username=$uname --password-stdin >> process.log

# perintah docker untuk melakukan push image dari lokal ke repository docker (hub.docker.com)
docker push krisnn/item-app:v1