#!/bin/bash 

# Prompt the user for input 
read -p "Enter the file name: " filename 
read -p "Enter the text you want to append: " user_input 

# Check if file exists; If not, create it 
if [ ! -f "$filename" ]; then 
    echo "File does not exist. Creating it...." 
    touch "$filename"
fi 

#Append the user input to the file 
echo "$user_input" >> "$filename"
echo "Text appended to $filename successfully." 

# Display the file contents after appending 
echo "Contents of $filename: "
cat "$filename"
