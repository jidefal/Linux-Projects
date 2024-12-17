#! /bin/bash 

read -p "Enter First Number: " Num1
read -p "Enter Second Number: " Num2 

Add=$((Num1 + Num2)) 
Sub=$((Num1 - Num2)) 
Multiply=$((Num1 * Num2)) 
Div=$((Num1 / Num2)) 

# Displaying results 
Echo "Addition result: $Add"
Echo "Subraction result: $Sub" 
Echo "Multiplication result: $Multiply" 
Echo "Division result: $Div" 

Echo "Program ran successfully" 