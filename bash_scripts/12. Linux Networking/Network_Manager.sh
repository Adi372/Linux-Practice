echo
echo "===== NETWORK DEVICES ====="
echo

printf "%-15s %-12s %s\n" "DEVICE" "TYPE" "STATE"
nmcli device status | tail -n +2 | awk '{
    printf "%-15s %-12s %s\n", $1, $2, $3
}'