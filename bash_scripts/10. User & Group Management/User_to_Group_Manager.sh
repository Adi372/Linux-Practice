echo "===== USER-TO-GROUP MANAGER ====="
echo
echo "1. Add user to group"
echo "2. Remove user from group"
echo "3. Show user's groups"
echo "4. Show group members"
echo "5. Exit"

read -p "Enter your choice: " choice

case "$choice" in

    1)
        read -p "Enter username: " username
        read -p "Enter group: " group

        sudo usermod -aG "$group" "$username"
        echo "User added to group."
        ;;

    2)
        read -p "Enter username: " username
        read -p "Enter group: " group

        sudo gpasswd -d "$username" "$group"
        echo "User removed from group."
        ;;

    3)
        read -p "Enter username: " username
        groups "$username"
        ;;

    4)
        read -p "Enter group: " group
        getent group "$group"
        ;;

    5)
        echo "Exiting..."
        ;;

    *)
        echo "Invalid option."
        ;;
esac