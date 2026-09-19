read -p "Enter username: " username

read -p "Are you sure? (y/n): " confirm

case "$confirm" in
    y|Y)
        echo
        echo "1. Delete account only"
        echo "2. Delete account + home directory"
        echo "3. Cancel"

        read -p "Enter your choice: " choice

        case "$choice" in
            1)
                sudo userdel "$username"
                echo "User account deleted."
                ;;

            2)
                sudo userdel -r "$username"
                echo "User account and home directory deleted."
                ;;

            3)
                echo "Cancelled."
                ;;

            *)
                echo "Invalid option."
                ;;
        esac
        ;;

    n|N)
        echo "Cancelled."
        ;;

    *)
        echo "Invalid response."
        ;;
esac