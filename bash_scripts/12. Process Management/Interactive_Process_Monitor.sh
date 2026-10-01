while true
do
    echo
    echo "================================"
    echo "       PROCESS MONITOR"
    echo "================================"
    echo
    echo "1. Show all processes"
    echo "2. Search process"
    echo "3. Show process by PID"
    echo "4. Show process tree"
    echo "5. Launch top"
    echo "6. Launch htop"
    echo "7. Exit"
    echo

    read -p "Enter a choice: " choice

    case $choice in

        1)
            ps aux
            ;;
        
        2)
            read -p "Enter process name: " name
            ps aux | grep "$name"
            ;;
        
        3)
            read -p "Enter PID: " pid
            ps -p "$pid"
            ;;

        4)
            ps -ef --forest
            ;;

        5) 
            top
            ;;
        
        6)
            htop
            ;;

        7)
            echo "Exiting..."
            break
            ;;
        
        *)
            echo "Invalid choice..."
            ;;
    esac
done