host=$1

echo "===== NETWORK PATH ====="
echo

printf "%-6s %-40s %s\n" "Hop" "Address" "RTT"
echo "---------------------------------------------------------------"

traceroute -4 "$host" 2>/dev/null | tail -n +2 | awk '{
    hop=$1

    if ($2 == "*") {
        address="*"
        rtt="*"
    }
    else {
        address=$2
        rtt=$4 " ms"
    }

    printf "%-6s %-40s %s\n", hop, address, rtt
}'