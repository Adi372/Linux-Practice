echo "===== PROCESS INFO ====="
echo

read -p "Enter PID: " pid
ps -p "$pid" -o pid,user,comm --no-headers | awk '{printf "PID: %s\nUser: %s\nCommand: %s\n", $1, $2, $3}'