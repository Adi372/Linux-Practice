interface=$1

RX_bytes=$(ip -s link show "$interface" | awk '/RX:/ {getline; print $1}')
RX_packets=$(ip -s link show "$interface" | awk '/RX:/ {getline; print $2}')
RX_errors=$(ip -s link show "$interface" | awk '/RX:/ {getline; print $3}')
RX_dropped=$(ip -s link show "$interface" | awk '/RX:/ {getline; print $4}')

TX_bytes=$(ip -s link show "$interface" | awk '/TX:/ {getline; print $1}')
TX_packets=$(ip -s link show "$interface" | awk '/TX:/ {getline; print $2}')
TX_errors=$(ip -s link show "$interface" | awk '/TX:/ {getline; print $3}')
TX_dropped=$(ip -s link show "$interface" | awk '/TX:/ {getline; print $4}')

echo
echo "===== INTERFACE STATISTICS ====="
echo
echo "Interface: $interface"
echo

echo "RX Bytes: $RX_bytes"
echo "RX Packets: $RX_packets"
echo "RX Errors: $RX_errors"
echo "RX Dropped: $RX_dropped"

echo

echo "TX Bytes: $TX_bytes"
echo "TX Packets: $TX_packets"
echo "TX Errors: $TX_errors"
echo "TX Dropped: $TX_dropped"