#! /bin/bash 

#Use for loop to iterate theough all files in the current directory 
for file in *; do 
# Check if it is a file (not a directory)
if [ -f "$file" ]; then 
    # Get the file size using 'stat'
    size=$(stat -c%s "$file")
    echo "File: $file | Size: $size bytes"
    fi
done