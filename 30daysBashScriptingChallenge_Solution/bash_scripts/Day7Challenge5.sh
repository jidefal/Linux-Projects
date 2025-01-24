#!/bin/bash

# Script: my_first_script.sh
# Description: This script demonstrates basic Bash scripting concepts
# Author: Your Name
# Date: YYYY-MM-DD

# Global variables
NAME=${1:-"World"}  # Default to "World" if no argument is provided
GREETING="Hello, $NAME!"
MAX_COUNT=5
LOGFILE="script_output.log"

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

# Menu system
show_menu() {
    echo "Choose an option:"
    echo "1. Print greeting"
    echo "2. Count down from $MAX_COUNT"
    echo "3. Generate a random number between 1 and 10"
    echo "4. Exit"
}

# Main script execution starts here
exec > >(tee -a "$LOGFILE") 2>&1

echo "Starting the script..."

while true; do
    show_menu
    read -p "Enter your choice: " choice
    case $choice in
        1)
            print_greeting
            ;;
        2)
            count_down "$MAX_COUNT"
            ;;
        3)
            RANDOM_NUMBER=$(generate_random_number)
            echo "Random number generated: $RANDOM_NUMBER"
            ;;
        4)
            echo "Exiting the script. Goodbye!"
            break
            ;;
        *)
            echo "Invalid option. Please try again."
            ;;
    esac
done

echo "Script execution completed."
