#!/bin/bash 

# Function to check if a number is prime 
is_prime() {
    local num=$1

    if [ "$num" -le 1 ]; then 
      return 1 # Not prime 
    fi

    for ((i = 2; i * i <= num; i++)); do 
      if [ $((num % i)) -eq 0 ]; then 
       return 1 # Not Prime 
      fi 
    done 


    return 0 # Prime  
}

# Find and print all prime numbers between 1 and 100 
echo "Prime numbers between 1 and 100: " 
for ((n = 1; n <= 100; n++)); do 
  if is_prime "$n"; then 
    echo -n "$n "
  fi 
done 

