#! /bin/bash 

#Prompt the user for a number 
read -p "Enter a number: " num

# Using a for loop to generate the multiplication table 
echo "Multiplication table for $num: "
for i in {1..12}; do 
    output=$((num * i))
    echo "$num x $i = $output"
done 

echo "Program ran Successfully"