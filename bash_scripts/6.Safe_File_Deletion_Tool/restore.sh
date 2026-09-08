# File Restore Tool

# Restores a file from the trash/ directory back to the current directory.

# Usage:
# ./restore.sh filename

# Example:
# ./restore.sh todo.txt

# The file is moved from:
# trash/todo.txt
# back to the current directory.

echo "You entered: $1"
mv "trash/$1" .
echo "$1 restored back successfully"