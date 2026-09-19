echo "===== GROUP MANAGER ====="
echo
echo "1. Create group"
echo "2. Create system group"
echo "3. Create group with specific GID"
echo "4. Delete group"
echo "5. Show group information"
echo "6. Exit"

read -p "Enter your choice: " choice

case "$choice" in

    1)
        read -p "Enter group name: " group
        sudo groupadd "$group"
        echo "Group created."
        ;;

    2)
        read -p "Enter system group name: " group
        sudo groupadd -r "$group"
        echo "System group created."
        ;;

    3)
        read -p "Enter group name: " group
        read -p "Enter GID: " gid
        sudo groupadd -g "$gid" "$group"
        echo "Group created with GID $gid."
        ;;

    4)
        read -p "Enter group name: " group
        sudo groupdel "$group"
        echo "Group deleted."
        ;;

    5)
        read -p "Enter group name: " group
        getent group "$group"
        ;;

    6)
        echo "Exiting..."
        ;;

    *)
        echo "Invalid option."
        ;;
esac