host=$1

result=$(ping -c 5 "$host")

packets_sent=$(echo "$result" | awk '/packets transmitted/ {print $1}')
packets_received=$(echo "$result" | awk '/packets transmitted/ {print $4}')
packet_loss=$(echo "$result" | awk -F', ' '/packet loss/ {print $3}' | tr -d '% packet loss')

min=$(echo "$result" | awk -F'=' '/rtt|round-trip/ {print $2}' | cut -d/ -f1)
avg=$(echo "$result" | awk -F'=' '/rtt|round-trip/ {print $2}' | cut -d/ -f2)
max=$(echo "$result" | awk -F'=' '/rtt|round-trip/ {print $2}' | cut -d/ -f3)

echo "===== PING ANALYSIS ====="
echo
echo "Host: $host"
echo "Packets sent: $packets_sent"
echo "Packets received: $packets_received"
echo "Packet loss: $packet_loss%"
echo
echo "Min: ${min:-N/A} ms"
echo "Avg: ${avg:-N/A} ms"
echo "Max: ${max:-N/A} ms"