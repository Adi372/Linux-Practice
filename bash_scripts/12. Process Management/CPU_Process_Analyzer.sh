echo "===== RESOURCE USAGE ====="
echo
printf "%-10s %-10s %-10s %s\n" "PID" "%CPU" "%MEM" "COMMAND"
ps aux --sort=-%cpu | awk  'NR > 1 {printf "%-10s %-10s %-10s %s\n", $2, $3, $4, $11}'
