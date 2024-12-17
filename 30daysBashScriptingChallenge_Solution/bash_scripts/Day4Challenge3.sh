#! /bin/bash 

# Prompt the user for two numbers 
read -p "Enter First Number: " num1
read -p "Enter Second Number: " num2

# Compare the Numbers 
if [ $num1 -gt $num2 ]; 
then 
echo "The Number '$num1' is greater than '$num2'"
elif [ $num1 -lt $num2 ];
then
echo "The Number '$num1' is less than '$num2'"
else
echo "The Number '$num1' equals '$num2'"
fi 

echo "Program successfully ran."  