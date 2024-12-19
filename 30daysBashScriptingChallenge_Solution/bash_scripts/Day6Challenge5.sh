#!/bin/bash

# Function to generate a random password
generate_password() {
  local length=$1
  if [[ ! "$length" =~ ^[0-9]+$ || "$length" -lt 1 ]]; then
    echo "Invalid password length. Please enter a positive integer."
    return 1
  fi

  local password=$(tr -dc 'A-Za-z0-9!@#$%^&*()_+=-[]{}|;:,.<>?' < /dev/urandom | head -c "$length")
  echo "$password"
}

# Prompt the user for the password length
read -p "Enter the desired password length: " pass_length

# Generate and display the password
echo "Generated password: $(generate_password "$pass_length")"

