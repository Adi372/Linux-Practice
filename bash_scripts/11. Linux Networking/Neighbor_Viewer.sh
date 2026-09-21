echo "===== NETWORK NEIGHBORS ====="
echo
printf "%-16s %-20s %s\n" "IP" "MAC" "State"
echo "------------------------------------------------"

ip neigh | awk '{
    printf "%-16s %-20s %s\n", $1, $5, $6
}'