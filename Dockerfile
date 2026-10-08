# Base Image
FROM tomcat:9.0-jdk21-temurin

# Remove the default Tomcat applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR file into Tomcat
COPY target/Batch5.war /usr/local/tomcat/webapps/

# Expose Tomcat Port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
