#!/bin/bash

APP_NAME="myapp"
DEPLOY_DIR=~/deploy

# Stop the existing application (this will vary depending on how you run your app)
sudo systemctl stop $APP_NAME

# Remove old deployment
rm -rf $DEPLOY_DIR/$APP_NAME.war

# Move new deployment
mv $DEPLOY_DIR/myapp.war $DEPLOY_DIR/$APP_NAME.war

# Start the application
sudo systemctl start $APP_NAME
