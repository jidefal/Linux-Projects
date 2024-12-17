#! /bin/bash 

# Use of Special Variables 

script_name=$0  # Name of the script 
num_args=$#     # The number of arguments passed to the script 
list_args="$@"   # List of all arguments passed to the script

#Output the Information 

echo "The Script name is: $script_name"
echo "Number of Arguments: $num_args"
echo "List of all Arguments: $list_args" 


echo "Program successfully ran" 