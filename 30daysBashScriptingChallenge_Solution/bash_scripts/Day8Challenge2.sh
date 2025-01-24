#!/bin/bash 

# Prompt the user for input and output file names 
read -p "Enter the name of the input file: " input_file 
read -p "Enter the name of the output file: " output_file 

# check if the input file exists
if [ ! -f "$input_file" ]; then 
    echo "Error: Input file '$input_file' does not exist."
    exit 1
fi 

# Read, sort, and write the sorted numbers to the output file 
sort -n "$input_file" > "$output_file" 

echo "Numbers sorted and wriiten to '$output_file' successfully." 

