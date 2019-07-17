# jenkins-scm-redmine-on-docker
Dockerfile and shell script for installing Jenkins, Scm, Tomcat, Mysql, Redmine on Docker

How to setup
1. Install Docker 
2. Download this project
3. Run setup.sh

After successful launching of Jenkins...
4. docker exec hello-tomcat-jenkins cat /root/.jenkins/secrets/initialAdminPassword

Input the echo string(password) into Jenkins's initial web page.


Current Version
1. ubuntu:18.04
2. tomcat:8.5.43
3. scm-webapp:1.60
4. jenkins:lastest
5. mysql:8.0.16
6. redmine:4.0.4


Note
1. This project uses 8080, 3000 ports
2. If tomcat download link is expired, then you need to update the old link in Dockerfile to available one.