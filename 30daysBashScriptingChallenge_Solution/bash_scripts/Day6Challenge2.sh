#!/bin/bash 

# Function to calculate factorial using recursion 
factorial () {
    local num=$1
    if [ "$num" -le 1 ]; then 
    echo 1 
    else 
     local prev=$(factorial $((num - 1)))
     echo $((num * prev))
    fi 
}

# Prompt the user for a number 
read -p "Enter a non-negative integer: " number

# Validate the input 
if [[ "$number" =~ ^[0-9]+$ ]]; then 
  # Call the factorial function and display the result 
  result=$(factorial "$number")
  echo "The factorial of $number is $result."
else 
  echo "Invalid input. Please enter a non-negative integer. " 
fi 
 