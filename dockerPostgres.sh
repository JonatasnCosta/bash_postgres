#!/bin/bash


echo "Downloading the Postgres image"
echo "................................."

sudo docker pull postgres
clear

echo "What is the name of the docker image?"
read imageDocker

echo "What is the password ?"
read passwordDocker



sudo docker run --name $imageDocker -e POSTGRES_PASSWORD=$passwordDocker -d -p 5432:5432 postgres
