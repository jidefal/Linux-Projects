#!/bin/bash

# Function to reverse a string
reverse_string() {
  local input="$1"
  local length=${#input}
  local reversed=""

  for (( i=length-1; i>=0; i-- )); do
    reversed+="${input:i:1}"
  done

  echo "$reversed"
}

# Read input from the user
read -p "Enter a string: " user_input

# Call the function and display the reversed string
reversed_output=$(reverse_string "$user_input")
echo "Reversed string: $reversed_output"
