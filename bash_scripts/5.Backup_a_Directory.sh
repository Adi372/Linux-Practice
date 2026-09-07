# Backup a Directory

# The user runs:
# ./backup.sh project/

# The script should create:
# backup/
# └── project/

# containing a copy of everything inside project/.

echo "You provided: $1"
mkdir backup
cp -r "$1" backup/