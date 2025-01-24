#!/bin/bash 

# Prompt the user for the command to execute
read -p "Enter the command to execute: " user_command
read -p "Enter the name of the output file: " output_file

# Execute the command, redirect its output to the file, and display it on the screen
echo "Executing command: $user_command"
$user_command 2>&1 | tee "$output_file"

echo "Output has been saved to '$output_file'."
