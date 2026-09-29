echo "===== TOP CPU PROCESSES ====="
echo

ps aux --sort=-%cpu | head -n 4 | awk 'NR > 1 {printf "%d. %s\t%s%%\n", NR - 1, $11, $3}'