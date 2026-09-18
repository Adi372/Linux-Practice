while true
do
    echo "================================="
    echo "  PACKAGE MAINTENANCE ASSISTANT"
    echo "================================="
    echo "1. Update package information"
    echo "2. Upgrade packages"
    echo "3. Remove unused dependencies"
    echo "4. Clean package cache"
    echo "5. Check package problems"
    echo "6. Check broken dependencies"
    echo "7. Exit"
    echo

    read -p "Enter a choice: " choice

    case $choice in

        1)
            sudo apt update
            ;;

        2)
            sudo apt upgrade
            ;;

        3)
            sudo apt autoremove
            ;;

        4)
            sudo apt clean
            ;;

        5)
            sudo apt-get check
            ;;

        6)
            sudo apt-get -f install
            ;;

        7)
            break
            ;;

        *)
            echo "Invalid Choice"
            ;;

    esac
done