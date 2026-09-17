if [ -z "$1" ];
then
    echo "Usage: $0 <service_name>"
    exit 1
fi

echo "===== SERVICE STATUS ====="

echo
echo "Service: $1"
echo

systemctl status "$1"