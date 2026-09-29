echo "===== CURRENT PROCESSES ====="
echo
printf "%-10s %-12s %s\n" "PID" "USER" "COMMAND"
ps -eo pid,user,comm --no-headers | awk '{printf "%-10s %-12s %s\n", $1, $2, $3}'