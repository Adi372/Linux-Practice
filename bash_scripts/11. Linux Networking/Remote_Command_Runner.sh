if [ -z "$1" ];
then
    echo "Usage: ./Remote_Command_Runner.sh user@IP"
    exit 1
fi

server=$1

echo "===== REMOTE SYSTEM INFO ====="
echo

echo "Hostname:"
ssh "$server" hostname

echo
echo "Username:"
ssh "$server" whoami

echo
echo "Kernel:"
ssh "$server" uname -r

echo
echo "Uptime:"
ssh "$server" uptime

echo
echo "Disk usage:"
ssh "$server" df -h /

echo
echo "Memory usage:"
ssh "$server" free -h