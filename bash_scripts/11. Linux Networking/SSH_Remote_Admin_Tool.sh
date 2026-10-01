read -p "Enter username: " username
read -p "Enter hostname/IP: " host

server="$username@$host"

while true
do
    echo
    echo "===== SSH ADMIN TOOL ====="
    echo
    echo "1. Connect"
    echo "2. Run remote command"
    echo "3. Check uptime"
    echo "4. Check disk usage"
    echo "5. Check running processes"
    echo "6. Exit"
    echo

    read -p "Enter choice: " choice

    case $choice in
        1)
            ssh "$server"
            ;;

        2)
            read -p "Enter remote command: " command
            ssh "$server" "$command"
            ;;

        3)
            ssh "$server" uptime
            ;;

        4)
            ssh "$server" "df -h /"
            ;;

        5)
            ssh "$server" "ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head"
            ;;

        6)
            echo "Exiting..."
            break
            ;;

        *)
            echo "Invalid choice."
            ;;
    esac
done