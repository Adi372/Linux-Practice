read -p "Username: " username
read -p "Expiry date (YYYY-MM-DD): " expiry

sudo useradd -m -e "$expiry" "$username"

echo
echo "Temporary user created."
echo "Username: $username"
echo "Expiry date: $expiry"