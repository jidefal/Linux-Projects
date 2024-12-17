#! /bin/bash 

# Request for user's Input 
read -p "Give us a number: " num 

# Check if the number is positive, negative or Zero

if [ "$num" -gt 0 ];
then  echo "The number is positive."
elif [ "$num" -lt 0 ]; 
then echo "The number is negative."
else
 echo "The number is zero."
fi

echo "The Program successfully ran "
