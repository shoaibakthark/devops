#!/bin/bash

echo "Enter the file name:"
read file

if [ -e "$file" ]; then
    echo "Permissions of file '$file' are:"
    getfacl --absolute-names --tabular "$file"

    echo "Do you want to make changes? ( 'yes'no') "
    read response

    case "$response" in
        yes)
            echo -n "Implementing changes..: "
            read resp
            chmod "$resp" "$file"
        echo "permissions chnaged to $resp"
            ;;
        no)
            echo "Exiting..."
            ;;
        *)
		echo "invaild response . Exising"
		;;
	esac
else
	echo "File '$file' does not exist ."
fi
