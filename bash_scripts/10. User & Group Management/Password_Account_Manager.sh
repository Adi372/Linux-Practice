username="$1"

echo "===== PASSWORD ACCOUNT MANAGER ====="
echo
echo "1. Change password"
echo "2. Lock password"
echo "3. Unlock password"
echo "4. Force password change"
echo "5. Set password expiry"
echo "6. Show password status"
echo "7. Exit"

read -p "Enter your choice: " choice

case "$choice" in

    1)
        sudo passwd "$username"
        ;;

    2)
        sudo passwd -l "$username"
        echo "Password locked."
        ;;

    3)
        sudo passwd -u "$username"
        echo "Password unlocked."
        ;;

    4)
        sudo passwd -e "$username"
        echo "User will be required to change password at next login."
        ;;

    5)
        read -p "Maximum password age (days): " days
        sudo passwd -x "$days" "$username"
        echo "Password expiry set to $days days."
        ;;

    6)
        sudo passwd -S "$username"
        ;;

    7)
        echo "Exiting..."
        ;;

    *)
        echo "Invalid option."
        ;;
esac