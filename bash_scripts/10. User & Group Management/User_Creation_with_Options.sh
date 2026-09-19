read -p "Username: " username
read -p "Home directory: " home
read -p "Shell: " shell
read -p "Comment: " comment

sudo useradd -m \
    -d "$home" \
    -s "$shell" \
    -c "$comment" \
    "$username"

echo
echo "User created."
echo
id "$username"