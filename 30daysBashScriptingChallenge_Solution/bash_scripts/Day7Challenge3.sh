#!/bin/bash

# Script: my_first_script.sh
# Description: This script demonstrates basic Bash scripting concepts
# Author: Your Name
# Date: YYYY-MM-DD

# Global variables
NAME=${1:-"World"}  # Default to "World" if no argument is provided
GREETING="Hello, $NAME!"
MAX_COUNT=5

# Functions
print_greeting() {
    echo "$GREETING"
}

count_down() {
    local count=$1

    # Check if the input is a positive integer
    if ! [[ "$count" =~ ^[0-9]+$ ]] || [ "$count" -le 0 ]; then
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

generate_random_number() {
    echo $((RANDOM % 10 + 1))
}

# Main script execution starts here
echo "Starting the script..."

print_greeting

# Use the random number function
RANDOM_NUMBER=$(generate_random_number)
echo "Random number generated: $RANDOM_NUMBER"

echo "Counting down from $MAX_COUNT"
if ! count_down "$MAX_COUNT"; then
    echo "Countdown failed due to invalid input."
fi

echo "Congratulations Script execution completed."
