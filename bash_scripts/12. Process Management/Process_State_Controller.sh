read -p "Enter PID: " pid

process=$(ps -p "$pid" -o comm=)

if [ -z "$process" ]; then
    echo "Process not found."
    exit 1
fi

while true
do
    echo
    echo "================================"
    echo "       PROCESS CONTROL"
    echo "================================"
    echo "Process: $process"
    echo "PID: $pid"
    echo
    echo "1. Terminate"
    echo "2. Force kill"
    echo "3. Pause"
    echo "4. Resume"
    echo "5. Exit"
    echo

    read -p "Enter choice: " choice

    case $choice in

        1)
            kill "$pid"
            echo "Process terminated."
            break
            ;;

        2)
            echo "WARNING: This will forcefully kill the process."
            read -p "Are you sure? (y/n): " confirm

            if [ "$confirm" = "y" ]; then
                kill -9 "$pid"
                echo "Process force killed."
                break
            fi
            ;;

        3)
            kill -STOP "$pid"
            echo "Process paused."
            ;;

        4)
            kill -CONT "$pid"
            echo "Process resumed."
            ;;

        5)
            echo "Exiting..."
            break
            ;;

        *)
            echo "Invalid choice."
            ;;

    esac
done