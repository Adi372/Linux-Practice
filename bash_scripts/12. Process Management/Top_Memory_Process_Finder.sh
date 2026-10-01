echo "===== TOP MEMORY PROCESSES ====="
echo
ps -eo comm,%mem --sort=-%mem | head