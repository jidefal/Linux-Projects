#! /bin/bash 

#Create an array of Favorite books 
favorite_books=("Pride and prejudice" "Rishest man in babylon" "Compounding" "Shoe dog" "Blink")

#Print each book with its index

for i in "${!favorite_books[@]}"; 
do 
echo "$i: ${favorite_books[$i]}"

done 
 
echo "Program Successfully ran"  