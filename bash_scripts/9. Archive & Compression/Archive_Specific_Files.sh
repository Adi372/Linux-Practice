#!/bin/bash

directory="$1"

if [ ! -d "$directory" ]; then
    echo "Directory not found"
    exit 1
fi

echo "Available files:"
ls "$directory"

echo
read -p "Enter files to archive (separated by spaces): " files

selected_files=()

for file in $files
do
    if [ -f "$directory/$file" ]; then
        selected_files+=("$directory/$file")
    else
        echo "File not found: $file"
        exit 1
    fi
done

tar -cvf project.tar "${selected_files[@]}"

echo
echo "Archive created: project.tar"
echo
echo "Archive contents:"
tar -tf project.tar