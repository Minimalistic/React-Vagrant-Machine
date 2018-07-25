#!/bin/bash

set -e

echo
echo "Environment installation started..."

##
#   Install core components
##

echo
echo "Updating package repositories ..."
apt-get update

# Prep for React
echo "Installing NPM..."
yes | sudo apt-get install npm
yes | sudo npm install -g create-react-app

##
#   Setup complete.
##

echo
echo "The environment has been installed."
echo
echo "You can start the machine by running: vagrant up"
echo "You can ssh to the machine by running: vagrant ssh"
echo "You can stop the machine by running: vagrant halt"
echo "You can delete the machine by running: vagrant destroy"
echo
echo "If this is your first time, you should install the virtual machine guest additions."
echo "To do that, ssh into the machine (vagrant ssh) and run: sudo ./postinstall.sh"
echo
exit 0
