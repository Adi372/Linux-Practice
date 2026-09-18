# Interactive Directory Explorer

# It should let you:
# 1. Show current directory
# 2. List files
# 3. List detailed files
# 4. Show hidden files
# 5. Enter directory
# 6. Go to parent directory
# 7. Go home
# 8. Clear screen
# 9. Exit

input=0
until [ "$input" -eq 9 ];
do
    echo
    echo "===== DIRECTORY EXPLORER ====="
    echo "1. Show current directory"
    echo "2. List files"
    echo "3. List detailed files"
    echo "4. Show hidden files"
    echo "5. Enter directory"
    echo "6. Go to parent directory"
    echo "7. Go home"
    echo "8. Clear screen"
    echo "9. Exit"
    
    read -p "Enter your choice: " input

    if [ "$input" -eq 1 ];
    then
        pwd

    elif [ "$input" -eq 2 ];
    then
        ls

    elif [ "$input" -eq 3 ];
    then
        ls -l

    elif [ "$input" -eq 4 ];
    then
        ls -a

    elif [ "$input" -eq 5 ];
    then
        read -p "Enter directory: " directory
        cd "$directory"

    elif [ "$input" -eq 6 ];
    then
        cd ..

    elif [ "$input" -eq 7 ];
    then
        cd ~

    elif [ "$input" -eq 8 ];
    then
        clear

    elif [ "$input" -eq 9 ];
    then
        echo "Goodbye"

    else
        echo "Invalid option"
    fi
done