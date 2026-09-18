# File Finder

# It should support searches such as:
# Search by:
# 1. Filename
# 2. Directory
# 3. File size
# 4. File type
# 5. Owner
# 6. Modification date

while true
do
    echo
    echo "===== FILE FINDER ====="
    echo "Search by:"
    echo "1. Filename"
    echo "2. Directory"
    echo "3. File size"
    echo "4. File type"
    echo "5. Owner"
    echo "6. Modification date"
    echo "7. Exit"

    read -p "Enter your choice: " choice

    if [ "$choice" -eq 1 ]
    then
        read -p "Enter file name: " file
        find . -name "$file"
        break

    elif [ "$choice" -eq 2 ]
    then
        read -p "Enter directory name: " directory
        find . -type d -name "$directory"
        break

    elif [ "$choice" -eq 3 ]
    then
        read -p "Enter file size: " size
        find . -size "$size"
        break

    elif [ "$choice" -eq 4 ]
    then
        read -p "Enter file type (f/d/l): " type
        find . -type "$type"
        break

    elif [ "$choice" -eq 5 ]
    then
        read -p "Enter owner name: " owner
        find . -user "$owner"
        break

    elif [ "$choice" -eq 6 ]
    then
        read -p "Enter modification date: " date
        find . -newermt "$date"
        break

    elif [ "$choice" -eq 7 ]
    then
        echo "Goodbye"
        break

    else
        echo "Invalid choice"
    fi
done