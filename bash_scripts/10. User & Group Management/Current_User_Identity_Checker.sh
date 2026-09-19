# | Command  | Meaning                      |
# | -------- | ---------------------------- |
# | id -un   | Shows username               |
# | id -u    | Shows user ID (UID)          |
# | id -g    | Shows primary group ID (GID) |
# | id -nG   | Shows group names            |


echo "===== USER INFORMATION ====="

echo
echo "Username: $(id -un)"
echo "UID: $(id -u)"
echo "Primary GID: $(id -g)"
echo "Groups: $(id -nG)"