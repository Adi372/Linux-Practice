read -p "Enter PID: " pid

process=$(ps -p "$pid" -o comm=)

if [ -z "$process" ]; then
    echo "Process not found."
    exit 1
fi

echo
echo "Process: $process"
echo
echo "1. Graceful termination"
echo "2. Force kill"
echo "3. Cancel"
echo

read -p "Enter choice: " choice

case $choice in

    1)
        kill "$pid"
        echo "$process terminated gracefully."
        ;;

    2)
        echo
        echo "WARNING: kill -9 immediately stops the process."
        echo "Do not use this casually on system processes."
        echo

        read -p "Are you sure? (y/n): " confirm

        if [ "$confirm" = "y" ]; then
            kill -9 "$pid"
            echo "$process force killed."
        else
            echo "Force kill cancelled."
        fi
        ;;

    3)
        echo "Cancelled."
        ;;

    *)
        echo "Invalid choice."
        ;;

esac