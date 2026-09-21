interface=$1

echo "Interface: $interface"
echo

if ip link show "$interface" | grep -q "state UP"
then
    echo "State: UP"
else
    echo "State: DOWN"
fi

if ip link show "$interface" | grep -q "LOWER_UP"
then
    echo "Link: RUNNING"
else
    echo "Link: NOT RUNNING"
fi