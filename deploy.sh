#!/bin/bash

# Add all changes to the staging area
git add .

# Commit changes with a message "CPES and NMPC"
git commit -m "CPES and NMPC"

# Install dependencies using bundle install
bundle install

# Use expect to automate confirmation
expect -c '
spawn bin/deploy -d master -s source
expect "Do you want to proceed? [y/N]" { send "y\r" }