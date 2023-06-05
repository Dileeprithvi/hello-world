FROM tomcat:9-alpine
MAINTAINER panjiyar_om@yahoo.com
ADD webapp/target/*.war /usr/local/tomcat/webapps/
RUN value=`cat conf/server.xml` && echo "${value//8080/8090}" >| conf/server.xml
CMD ["catalina.sh", "run"]
