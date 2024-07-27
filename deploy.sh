#!/bin/bash

# Update this path to the actual webapps directory for Tomcat
WEBAPPS_DIR="/java-web-app/src/main/webapp"
  # Update this path

# Ensure the directory exists
if [ ! -d "$WEBAPPS_DIR" ]; then
  echo "Directory $WEBAPPS_DIR does not exist."
  exit 1
fi

# Move the WAR file to the webapps directory
mv ~/deploy/*.war $WEBAPPS_DIR/

# Restart the Tomcat service. Adjust 'tomcat' to the actual service name
service tomcat restart  # Update 'tomcat' to your actual service name
