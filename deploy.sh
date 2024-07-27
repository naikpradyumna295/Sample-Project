#!/bin/bash
sudo mv ~/deploy/*.war /path/to/tomcat/webapps/
sudo systemctl restart tomcat  # or your specific service command
