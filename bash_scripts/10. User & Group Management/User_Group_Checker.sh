username="$1"

echo "User: $username"
echo
echo "Groups:"
groups "$username" | cut -d: -f2