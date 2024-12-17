#! /bin/bash 

# Formula to generate random number between 1 and 10 
target=$((RANDOM % 10 + 1)) # "RANDOM" ia a built-in Bash Variable that generates a random Integer 
                            # each time it is accessed. Value range from 0 to 32767
#Initialize User's guess 
guess=0

echo "Guess a Number between 1 and 10"

while [ "$guess" -ne "$target" ]; 
do read -p "Enter your Number: " guess

#Check is the guess is correct 
    if [ "$guess" -lt "$target" ]; 
    then echo "Too low. Try again!"
    elif [ "$guess" -gt "$target" ];
    then echo "Too high. Try again!" 
    fi 
done

echo "Congratulations! You guessed the number $target!"
