#!/bin/bash 

# Script: my_first_script.sh 
# Description: This script demonstrates basic Bash scripting concepts
# Author: Jide Falaki 
# Date: 2024-12-30

# Global Variables 
NAME=${1:-"world"}  # Default to "World" if no argument is provided 
GREETING="Hello, $NAME!"
MAX_COUNT=-5 

# Functions 

print_greetings() {
    echo "$GREETING"
}

count_down() {
    local count=$1

# Check if the input is a positive integer 
if ! [[ "$count" =~ ^[0-9]+$ ]]  || [ "$count" -le 0 ]; then 
    echo "Error: The count must be a positive integer."
    return 1
fi 

while [ "$count" -gt 0 ]; do 
    echo "$count"
    count=$((count - 1))
    sleep 1
done 
echo "Done!"
return 0 
}

# Main Script execution starts here
echo "Starting the script..." 

print_greetings

echo "Counting down from $MAX_COUNT"
if ! count_down "$MAX_COUNT"; then 
    echo "Countdown failed due to invalid input." 
fi 

echo "Congratulations Script execution completed." 


