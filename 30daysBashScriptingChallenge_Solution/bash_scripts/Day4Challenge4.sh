#! /bin/bash 

# Prompt the user for File name 
read -p "Enter the File name: " filename 

# Check if the file exists
if [ ! -e "$filename" ]; 
then echo "The file '$filename' does not exist."
exit 1
fi 

# Check write Permission 
if [ -w "$filename" ]; 
then echo "You have the write permission for the file '$filename'."
else 
echo "You do not have write permission for the file '$filename'."
fi

echo "Program ran Successfully"

