# Safe File Deletion Tool
# Moves the given file into a trash/ directory instead of permanently deleting it.

# Usage:
# ./delete.sh filename

# Example:
# ./delete.sh todo.txt

# The file is moved to:
# trash/todo.txt

echo "You entered: $1"
mkdir -p trash
mv "$1" trash/
echo "Your given data moved to trash successfully"