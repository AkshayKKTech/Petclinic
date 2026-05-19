FROM tomcat:9.0-jre11-openjdk-slim

# Clean default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the actual war file produced by 'mvn clean install'
COPY target/petclinic.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
