pid=$1

if [ -z "$pid" ]; then
    echo "Usage: ./Process_Priority_Inspector.sh PID"
    exit 1
fi

process=$(ps -p "$pid" -o comm=)
nice_value=$(ps -p "$pid" -o ni=)

echo "PID: $pid"
echo "Command: $process"
echo "Nice value: $nice_value"