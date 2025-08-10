# Use official WildFly image
FROM quay.io/wildfly/wildfly:latest

# Set working directory
WORKDIR /opt/jboss/wildfly

# Copy WAR file to deployments
COPY target/jakartaee-hello-restful-web.war /opt/jboss/wildfly/standalone/deployments/

# Expose default WildFly HTTP port
EXPOSE 8080

# Start WildFly server
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]

