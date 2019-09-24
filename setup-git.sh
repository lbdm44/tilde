#!/bin/bash

user=$(whoami)
home=$(eval echo ~$user)

echo "Setting up git files..."

# Copy over git files
cp .gitconfig "$home/.gitconfig"
cp .gitignore "$home/.gitignore"

# Setup Name/Email
if [ $# -eq 0 ]; then
    echo -e "\tName and Email not provided"
    exit
elif [ $# -eq 1 ]; then
    echo -e "\tSetting up git with name: $1"
    git config --global user.name "$1"
    exit
elif [ $# -eq 2 ]; then
    echo -e "\tSetting up git with name: $1"
    git config --global user.name "$1"
    echo -e "\tSetting up git with email: $2"
    git config --global user.email "$2"
    exit
fi
