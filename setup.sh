#!/bin/sh
sudo docker build --tag tomcat_with_jenkins:0.2 .
sudo docker run -d --name hello-tomcat-jenkins -p 8080:8080 tomcat_with_jenkins:0.2


sudo docker network create redmine-network

sudo docker run -d --name mysql -e MYSQL_ROOT_PASSWORD=redmine -e MYSQL_DATABASE=redmine --network redmine-network mysql:8.0.16
sudo docker run -d --name redmine -p 3000:3000 --network redmine-network redmine:4.0.4

docker exec hello-tomcat-jenkins cat /root/.jenkins/secrets/initialAdminPassword