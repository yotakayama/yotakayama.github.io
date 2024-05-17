#!/bin/bash

# Add all changes to the staging area
git add .

# Commit changes with a message "CPES and NMPC"
git commit -m "CPES and NMPC"

# Install dependencies using bundle install
bundle install

# Deploy the application to the master branch from the source directory
bin/deploy -d master -s source