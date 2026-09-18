while true
do
    echo "================================"
    echo "        PACKAGE MANAGER"
    echo "================================"
    echo "1. Search package"
    echo "2. Show package information"
    echo "3. Install package"
    echo "4. Remove package"
    echo "5. Purge package"
    echo "6. List installed packages"
    echo "7. Check package status"
    echo "8. Exit"
    echo

    read -p "Enter a coice: " choice
    case $choice in

        1)  
            read -p "Enter package name: " package
            apt search "$package"
            ;;
        
        2)
            read -p "Enter package name: " package
            apt show "$package"
            ;;
        
        3)
            read -p "Enter package name: " package
            sudo apt install "$package"
            ;;
        
        4)
            read -p "Enter package name: " package
            sudo apt remove "$package"
            ;;
        
        5)
            read -p "Enter package name: " package
            sudo apt purge "$package"
            ;;
        
        6)
            dpkg -l
            ;;

        7)
            read -p "Enter package name: " package
            dpkg -s "$package"
            ;;
        
        8)
            break
            ;;
        
        *)
            echo "Invalid Choice"
            ;;
    
    esac
done