#!/bin/bash 

# Creating the "Project" directory and its subdirectories 
mkdir -p "$HOME/project/docs" "$HOME/project/src" "$HOME/project/tests" 

# Create "README.md" in each subdirectory 
for dir in "$HOME/project/docs" "$HOME/project/src" "$HOME/project/tests"; 
do touch "$dir/README.md"

done 

echo "Automation Successfully done in $HOME/project" 