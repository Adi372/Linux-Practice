echo "===== PROJECT TEAM MANAGER ====="
echo
echo "1. Create team"
echo "2. Add member"
echo "3. Remove member"
echo "4. Show team members"
echo "5. Delete team"
echo "6. Exit"

read -p "Enter your choice: " choice

case "$choice" in

    1)
        read -p "Enter team name: " team

        sudo groupadd "$team"

        echo "Team '$team' created."
        ;;

    2)
        read -p "Enter username: " username
        read -p "Enter team name: " team

        sudo usermod -aG "$team" "$username"

        echo "$username added to $team."
        ;;

    3)
        read -p "Enter username: " username
        read -p "Enter team name: " team

        sudo gpasswd -d "$username" "$team"

        echo "$username removed from $team."
        ;;

    4)
        read -p "Enter team name: " team

        getent group "$team"
        ;;

    5)
        read -p "Enter team name: " team

        sudo groupdel "$team"

        echo "Team '$team' deleted."
        ;;

    6)
        echo "Exiting..."
        ;;

    *)
        echo "Invalid option."
        ;;
esac