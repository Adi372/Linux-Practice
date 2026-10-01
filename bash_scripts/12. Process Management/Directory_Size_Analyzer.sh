directory=$1

if [ -z "$directory" ]; then
    echo "Usage: ./size-analyzer.sh DIRECTORY"
    exit 1
fi

if [ ! -d "$directory" ]; then
    echo "Directory not found."
    exit 1
fi

echo "===== DIRECTORY SIZE ====="
echo

du -h -d 1 "$directory"