username="$1"

echo "===== USER MODIFICATION ====="
echo
echo "1. Change username"
echo "2. Change UID"
echo "3. Change primary group"
echo "4. Change home directory"
echo "5. Change shell"
echo "6. Add secondary group"
echo "7. Show user information"
echo "8. Exit"

read -p "Enter your choice: " choice

case "$choice" in

    1)
        read -p "Enter new username: " newname
        sudo usermod -l "$newname" "$username"
        echo "Username changed."
        ;;

    2)
        read -p "Enter new UID: " uid
        sudo usermod -u "$uid" "$username"
        echo "UID changed."
        ;;

    3)
        read -p "Enter primary group: " group
        sudo usermod -g "$group" "$username"
        echo "Primary group changed."
        ;;

    4)
        read -p "Enter new home directory: " home
        sudo usermod -d "$home" "$username"
        echo "Home directory changed."
        ;;

    5)
        read -p "Enter new shell: " shell
        sudo usermod -s "$shell" "$username"
        echo "Shell changed."
        ;;

    6)
        read -p "Enter secondary group: " group
        sudo usermod -aG "$group" "$username"
        echo "Group added."
        ;;

    7)
        id "$username"
        ;;

    8)
        echo "Exiting..."
        ;;

    *)
        echo "Invalid option."
        ;;
esac