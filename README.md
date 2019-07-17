# jenkins-scm-redmine-on-docker
Dockerfile and shell script for installing Jenkins, SCM Manager, Tomcat, Mysql, Redmine on Docker

How to setup
1. Install Docker 
2. Download this project
3. Run setup.sh

After successful launching of Jenkins...

4. docker exec hello-tomcat-jenkins cat /root/.jenkins/secrets/initialAdminPassword

Input the echo string(password) into Jenkins's initial web page.

5. Check every service successfully launched

Jenkins : http://localhost:8080/jenkins

SCM Manager : http://localhost:8080/scm

Redmine : http://localhost:3000


Initial Log in Info
1. Jenkins ID :admin, PW : admin
2. SCM Manager ID :scmadmin, PW :scmadmin
3. Redmine ID :admin, PW: admin

Installation Path in the hello-tomcat-jenkins container
1. Maven : /usr/share/maven
2. JDK : /usr/lib/jvm/java-8-openjdk-amd64/
3. git : /usr/bin/git

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