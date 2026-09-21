interface=$1

ipv4=$(ip -4 addr show "$interface" | awk '/inet / {print $2}')
ipv6=$(ip -6 addr show "$interface" | awk '/inet6 / {print $2}')
prefix=$(echo "$ipv4" | cut -d'/' -f2)

echo "===== IP INFORMATION ====="
echo
echo "Interface: $interface"
echo "IPv4: ${ipv4:-N/A}"
echo "IPv6: ${ipv6:-N/A}"
echo "Network prefix: /${prefix}"