FROM centos:7
MAINTAINER Neil

RUN yum install -y wget

RUN cd /

RUN wget https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz
RUN tar zxvf openjdk-17.0.2_linux-x64_bin.tar.gz 
RUN wget http://apache.stu.edu.tw/tomcat/tomcat-8/v8.5.75/bin/apache-tomcat-8.5.75.tar.gz 
RUN tar zxvf apache-tomcat-8.5.75.tar.gz 

ENV JAVA_HOME=/jdk-17.0.2 
ENV PATH=$PATH:/jdk-17.0.2/bin
CMD ["/apache-tomcat-8.5.75/bin/catalina.sh", "run"]
