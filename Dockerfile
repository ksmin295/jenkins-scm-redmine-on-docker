FROM ubuntu:18.04
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget git maven sudo
RUN mkdir /usr/local/tomcat
RUN wget http://www-us.apache.org/dist/tomcat/tomcat-8/v8.5.43/bin/apache-tomcat-8.5.43.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-8.5.43/* /usr/local/tomcat/
RUN wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war -O /usr/local/tomcat/webapps/jenkins.war
RUN wget https://maven.scm-manager.org/nexus/content/repositories/releases/sonia/scm/scm-webapp/1.60/scm-webapp-1.60.war -O /usr/local/tomcat/webapps/scm.war
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]