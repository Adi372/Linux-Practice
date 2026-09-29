echo "===== PROCESS SUMMARY ====="
echo

username=$(whoami)

total=$(ps -e --no-headers | wc -l)
root=$(ps -eo user --no-headers | grep -c "^root$")
user=$(ps -eo user --no-headers | grep -c "^$username$")

echo "Total processes: $total"
echo "Root processes: $root"
echo "$username processes: $user"