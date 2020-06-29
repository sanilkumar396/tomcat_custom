FROM tomcat:8.0-alpine
LABEL maintainer="sanilkumar396"
WORKDIR /opt
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
EXPOSE 8080
CMD ["catalina.sh", "run"]
