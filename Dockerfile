FROM tomcat:8
# Take the war and copy to webapps of tomcat
COPY addressbook/addressbook_main/target/addressbook.war /usr/local/tomcat/webapps/
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/context.xml

RUN sed -i "s/8080/8080/g" /usr/local/tomcat/conf/server.xml
