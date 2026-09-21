while true
do
    echo "===== NETWORK CONNECTION MANAGER ====="
    echo
    echo "1. Show connections"
    echo "2. Show devices"
    echo "3. Activate connection"
    echo "4. Deactivate connection"
    echo "5. Show device details"
    echo "6. Exit"
    echo

    read -p "Enter choice: " choice

    case "$choice" in

        1)
            nmcli connection show
            ;;

        2)
            nmcli device status
            ;;

        3)
            read -p "Enter connection name: " connection
            sudo nmcli connection up "$connection"
            ;;

        4)
            read -p "Enter connection name: " connection
            sudo nmcli connection down "$connection"
            ;;

        5)
            read -p "Enter device name: " device
            nmcli device show "$device"
            ;;

        6)
            echo "Exiting..."
            exit 0
            ;;

        *)
            echo "Invalid choice."
            ;;

    esac

    echo
done