#! /bin/bash 

# Prompt user for name and Age 
read -p "what is your name: " name
read -p "what is your Age: " age 

# Cheking user's Name and Age for Access 
 if [ "$name" == "admin" ] && [ "$age" -ge 18  ];
then echo "Access Granted" 
else echo "Access Denied" 

fi

Echo "Program ran Successfully" 


