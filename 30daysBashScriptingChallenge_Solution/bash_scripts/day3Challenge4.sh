#! /bin/bash 

# Using command substitution to get current user, directory, and date and time 

current_user=$(whoami)
current_dir=$(pwd)
current_datetime=$(date +"%y-%m-%d %H:%M:%S")

# Display Formatted Output 

echo -e "User: $current_user\nDirectory: $current_dir\nDate_and_Time: $current_datetime"

