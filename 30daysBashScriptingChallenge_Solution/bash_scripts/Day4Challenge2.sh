#! /bin/bash 

# Prompt User for the File name 
read -p "Enter the file name: " filename 

#Checks if the file exist
if [ -f "$filename" ];
then echo "File '$filename' exists. Here are its contents:"
cat "$filename"
else 
echo "File '$filename' does not exist. Creating same '$filename' with default text."
echo "This is the default text." > "$filename"
echo  "File '$filename' created successfully."
fi
