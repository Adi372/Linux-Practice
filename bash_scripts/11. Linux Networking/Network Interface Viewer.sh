echo "===== NETWORK INTERFACES ====="
echo

for interface in $(ip -o link show | awk -F': ' '{print $2}' | grep -v '^lo$')
do
    mac=$(ip link show "$interface" | awk '/link\/ether/ {print $2}')
    ipv4=$(ip -4 addr show "$interface" | awk '/inet / {print $2}' | cut -d/ -f1)

    if ip link show "$interface" | grep -q "state UP"
    then
        status="UP"
    else
        status="DOWN"
    fi

    if [[ "$interface" == wlan* ]]
    then
        type="Wi-Fi"
    elif [[ "$interface" == eth* ]]
    then
        type="Ethernet"
    else
        type="Other"
    fi

    echo "Interface: $interface"
    echo "Type: $type"
    echo "IPv4: ${ipv4:-N/A}"
    echo "MAC: ${mac:-N/A}"
    echo "Status: $status"
    echo
done