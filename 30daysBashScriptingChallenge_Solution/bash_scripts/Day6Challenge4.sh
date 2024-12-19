#!/bin/bash 

# Function to analyze a file 
analyze_file() {
    local filename=$1

    if [ -f "$filename" ]; then 
        local lines=$(wc -l < "$filename")
        local words=$(wc -w < "$filename")
        local chars=$(wc -c < "$filename")

        echo "File: $filename"
        echo " Lines: $lines"
        echo " Words: $words" 
        echo " Characters: $chars"
    else 
      echo "File: $filename does not exist or is not a regular file." 
    fi 
}

# Main script to analyze multiple files 
echo "Analyzing files....." 
for file in "$@"; do 
    analyze_file "$file"
done 