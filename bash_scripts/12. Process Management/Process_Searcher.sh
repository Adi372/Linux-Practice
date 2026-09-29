echo "===== PROCESS SEARCH ====="
echo
read -p "Enter process name: " process
echo
printf "%-10s %-12s %s\n" "PID" "USER" "COMMAND"

ps -eo pid,user,comm --no-headers | awk -v name="$process" '$3 == name {printf "%-10s %-12s %s\n", $1, $2, $3}'