while true
do
    echo "===== INTERFACE CONTROL ====="
    echo
    echo "1. Show interfaces"
    echo "2. Bring interface UP"
    echo "3. Bring interface DOWN"
    echo "4. Show status"
    echo "5. Exit"
    echo

    read -p "Enter a choice: " choice

    case "$choice" in

        1)
            echo "Available Interfaces:"
            ip -o link show | awk -F': ' '{print $2}'
            ;;

        2)
            read -p "Enter the interface name: " interface
            sudo ip link set "$interface" up
            ;;

        3)
            read -p "Enter the interface name: " interface
            sudo ip link set "$interface" down
            ;;

        4)
            read -p "Enter the interface name: " interface

            if ip link show "$interface" | grep -q "state UP"
            then
                echo "State: UP"
            else
                echo "State: DOWN"
            fi
            ;;

        5)
            echo "Exiting..."
            exit 0
            ;;

        *)
            echo "Invalid choice."
            ;;
    esac

    echo
done