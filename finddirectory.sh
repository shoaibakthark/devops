#!/bin/bash/
echo "Enter your directory :"
read dir
if [ -d "$dir" ]; 
then
	echo "Directory '$dir' exists "
else
	mkdir $dir
fi
