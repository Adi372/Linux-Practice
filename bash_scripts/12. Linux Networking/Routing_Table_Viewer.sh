default_gateway=$(ip route | awk '/^default/ {print $3}')
interface=$(ip route | awk '/^default/ {print $5}')
local_network=$(ip route | awk '!/^default/ && /proto kernel/ {print $1; exit}')

echo "===== ROUTING TABLE ====="
echo
echo "Default Gateway: $default_gateway"
echo "Interface: $interface"
echo
echo "Local Network: $local_network"