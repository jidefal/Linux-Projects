#! /bin/bash 

# Log file for errors 
error_log="error.log" 

# Prompt the user for a command to execute 
read -p "Enter the command to excute: " user_command 

# Excute the command, redirect errors to the log file, and display normal output on the screen 
$user_command 2>> "$error_log"

# Notify the user if any errors were logged 
if [ -s "$error_log" ]; then 
    echo "Errors were encountered. check the log file: $error_log"
else 
    echo "Command executed successfully. No errors found."
fi 
