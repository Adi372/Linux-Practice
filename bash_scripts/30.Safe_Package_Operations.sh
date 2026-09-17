while true
do
    echo "================================="
    echo "        PACKAGE SIMULATOR"
    echo "================================="
    echo "1. Simulate installation"
    echo "2. Simulate removal"
    echo "3. Show package information"
    echo "4. Exit"

    read -p "Enter your choice: " choice

    case $choice in

        1)
            read -p "Enter package name: " package
            sudo apt-get -s install "$package"
            ;;
        
        2)
            read -p "Enter package name: " package
            sudo apt-get -s remove "$package"
            ;;
        
        3)
            read -p "Enter package name: " package
            apt-cache show "$package"
            ;;
        
        4)
            break
            ;;
        
        *) 
            echo "Invalid Command"
            ;;
    esac
done