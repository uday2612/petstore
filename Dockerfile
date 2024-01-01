FROM tomcat
RUN mv /usr/local/tomcat/webapps /usr/local/tomcat/webappsbak
RUN mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps
RUN apt update && apt install -y default-jdk curl
COPY /var/lib/jenkins/workspace/Petstore/deployment.yaml /usr/local/tomcat/webapps/deployment.yaml
EXPOSE 8081
