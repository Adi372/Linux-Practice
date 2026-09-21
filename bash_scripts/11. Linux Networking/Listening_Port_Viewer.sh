echo
echo "===== LISTENING PORTS ====="
echo

printf "%-12s %s\n" "Protocol" "Port"

echo "--------------------"

ss -tuln | tail -n +2 | awk '{
    split($5, a, ":")
    printf "%-12s %s\n", $1, a[length(a)]
}'