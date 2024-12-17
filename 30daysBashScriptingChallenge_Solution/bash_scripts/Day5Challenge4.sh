#! /bin/bash 

#Prompt the user for a number
read -p "Enter a non-negative integer: " num 

# Validate number and Calculate factorial 
if [[ "$num" =~ ^[0-9]+$ ]]; then 
    factorial=1
    while [ "$num" -gt 0 ]; do 
        factorial=$((factorial * num))
        num=$((num - 1))
    done
    echo "The factorial is $factorial."
else
    echo "Invalid Number. Please enter a non-negative integer."
fi 
