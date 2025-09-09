#!/bin/bash

############### script to check system status ###############

# Function to check all directoris and files size and permissions

echo "below is the list of all files and directories with their sizes and permissions"
ls -lh
echo "---------------------------------------------------------"-------------------------

# Function to check disk space usage

echo "below is the disk space usage"

df-h

echo "---------------------------------------------------------"

# Function to check memory usage

echo "below is the memory usage"
free -h

echo "---------------------------------------------------------"

# Function to check CPU usage

echo "below is the CPU usage"

top -bn1 | grep "Cpu(S)"

echo "---------------------------------------------------------"

# Function to check running processes

echo "below is the list of running processes"

ps -aux

echo "---------------------------------------------------------"

# Function to check system connectivity

echo "checking system connectivity by pinging google.com"

ping -c 2 google.com > /dev/null 2>&1

if [ $? -eq 0 ]; then
    echo "System is connected to the internet"
else
    echo "System is not connected to the internet"
fi

echo "---------------------------------------------------------"