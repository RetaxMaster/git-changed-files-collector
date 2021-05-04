#!/bin/bash
# Shell script by RetaxMaster, creates a .tar.gz file with the files changed in a project using git and a changes.md file.

set -e
dir_name="changes"
file_name="changes.md"
file_path="$dir_name/$file_name"

# Creates the folder
[ ! -d $dir_name ] && mkdir -p $dir_name
 
# Creates the changes.md file
git diff "$1" "$2" --name-only --output=$file_path

# Copy changed files to the $dir_name folder
cp $(cat $file_path) $dir_name

# Appends instructions to the beginning of the changes.md file

if [ -z "$3" ]; then 
    message="Reemplazar los siguientes archivos:"
else 
    message="$3"
fi

message="$message\n"

sed -i "1i$message" $file_path

# Creates the .tar.gz file
tar -czf "$dir_name.tar.gz" $dir_name

# Deletes the folder
rm -r $dir_name

# echo "Done :D"