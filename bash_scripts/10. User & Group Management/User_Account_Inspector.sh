username="$1"

echo "===== USER ACCOUNT INSPECTOR ====="
echo
echo "Username: $(id -un "$username")"
echo "UID: $(id -u "$username")"
echo "Primary GID: $(id -g "$username")"
echo "Groups: $(id -nG "$username")"

echo "Home directory: $(getent passwd "$username" | cut -d: -f6)"
echo "Login shell: $(getent passwd "$username" | cut -d: -f7)"