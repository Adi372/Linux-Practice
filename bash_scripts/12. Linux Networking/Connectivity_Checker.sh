gateway=$(ip route | awk '/^default/ {print $3}')

check_connection()
{
    target=$1
    name=$2

    if ping -c 2 -W 2 "$target" &>/dev/null
    then
        echo "$name → PASS"
    else
        echo "$name → FAIL"
    fi
}

echo "===== CONNECTIVITY CHECK ====="
echo

check_connection "127.0.0.1" "localhost"
check_connection "$gateway" "router"
check_connection "8.8.8.8" "8.8.8.8"
check_connection "google.com" "google.com"