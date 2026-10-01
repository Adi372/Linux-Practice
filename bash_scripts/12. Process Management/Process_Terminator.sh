read -p "Enter PID: " pid

process=$(ps -p "$pid" -o comm=)

if [ -z "$process" ]; then
    echo "Process not found."
    exit 1
fi

echo
echo "Process: $process"
read -p "Do you want to terminate it? (y/n): " choice

if [ "$choice" = "y" ]; then
    kill "$pid"
    echo "Process $pid terminated."
else
    echo "Process not terminated."
fi