# Text Transformer

# Features:
# 1. Convert lowercase -> uppercase
# 2. Convert uppercase -> lowercase
# 3. Replace characters
# 4. Delete characters


while true
do
    echo "1. Convert lowercase -> uppercase"
    echo "2. Convert uppercase -> lowercase"
    echo "3. Replace characters"
    echo "4. Delete characters"
    echo "5. Exit"

    read -p "Make a choice: " choice

    if [ "$choice" -eq 1 ]
    then
        read -p "Enter your text: " text
        echo "$text" | tr 'a-z' 'A-Z'

    elif [ "$choice" -eq 2 ]
    then
        read -p "Enter your text: " text
        echo "$text" | tr 'A-Z' 'a-z'

    elif [ "$choice" -eq 3 ]
    then
        read -p "Enter your text: " text
        read -p "Enter the character you want to replace: " char1
        read -p "Enter the character you want to replace with: " char2
        echo "$text" | tr "$char1" "$char2"
    
    elif [ "$choice" -eq 4 ]
    then
        read -p "Enter your text: " text
        read -p "Enter the character you want to delete: " char
        echo "$text" | tr -d "$char"
    
    elif [ "$choice" -eq 5 ]
    then
        echo "Exiting..."
        break
    
    else 
        echo "Invalid Choice"
    fi
done