# Simple Linux Notes Manager

# Create:
# ./notes.sh

# Menu:
# 1. Create note
# 2. View note
# 3. Edit note
# 4. Delete note
# 5. List notes

# Use nano or vim for editing.

mkdir -p notes
while true
do
    echo
    echo "===== NOTES MANAGER ====="
    echo "1. Create note"
    echo "2. View note"
    echo "3. Edit note"
    echo "4. Delete note"
    echo "5. List notes"
    echo "6. Exit"

    read -p "Enter choice: " choice

    if [ "$choice" -eq 1 ]
    then
        read -p "Enter note name: " note
        touch notes/"$note".txt
        echo "Note created"
    elif [ "$choice" -eq 2 ]
    then
        read -p "Enter note name: " note
        cat notes/"$note".txt
    elif [ "$choice" -eq 3 ]
    then
        read -p "Enter note name: " note
        nano notes/"$note".txt
    elif [ "$choice" -eq 4 ]
    then
        read -p "Enter note name: " note
        rm notes/"$note".txt
        echo "Note deleted"
    elif [ "$choice" -eq 5 ]
    then
        ls notes
    elif [ "$choice" -eq 6 ]
    then
        echo "Goodbye"
        break
    else
        echo "Invalid choice"
    fi
done
    
