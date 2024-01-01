FROM tomcat
RUN mv /usr/local/tomcat/webapps /usr/local/tomcat/webappsbak
RUN mv /usr/local/tomcat/webapps.dist /usr/local/tomcat/webapps
RUN apt update && apt install -y default-jdk curl
COPY /var/lib/jenkins/workspace/Petstore/target/jpetstore.war /usr/local/tomcat/webapps/jpetstore.war
EXPOSE 8081
