#!/bin/bash 

# Script: my_first_script.sh 
# Description: This script demonstrates basic Bash scripting concepts
# Author: Jide Falaki 
# Date: 2024-12-30 

# Global Variables 
NAME=${1:-"world"}  # Default to "World" if no argument is provided 
GREETING="Hello, $NAME!"
MAX_COUNT=5 

# Functions 

print_greetings() {
    echo "$GREETING"
}

count_down() {
    local count=$1
    while [ $count -gt 0 ]; do 
        echo $count 
        count=$((count - 1))
        sleep 1
    done 
    echo "Congratulations!" 
}

# Main script execution starts here 
echo "Starting the script..."

print_greetings

echo "Counting down from $MAX_COUNT"
count_down $MAX_COUNT

echo "Congrations Script execution Completed"
