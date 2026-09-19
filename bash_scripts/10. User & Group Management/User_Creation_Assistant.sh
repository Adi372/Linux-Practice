read -p "Username: " username

echo
echo "===== USER ACCOUNT CREATOR ====="
echo
echo "1. Create user"
echo "2. Set password"
echo "3. Show user information"
echo "4. Exit"

read -p "Enter your choice: " choice

case "$choice" in

    1)
        sudo useradd -m "$username"
        echo "User created."
        ;;

    2)
        sudo passwd "$username"
        ;;

    3)
        id "$username"
        ;;

    4)
        echo "Exiting..."
        ;;

    *)
        echo "Invalid option"
        exit 1
        ;;
esac