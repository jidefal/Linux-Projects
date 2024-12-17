#! /bin/bash 

echo "Multiplication Table 1 to 5"
echo "------------------------------"

#Outer Loop for rows (1 to 5)
for i in {1..5}; do 
    #Inner loop for columns (1 to 5)
    for j in {1..5}; do 
        #Calculate 
    printf "%4d" $((i * j))
done 
# Print a newline for each row
echo

done 

echo "Program Successfully ran"