read -p "Enter directory: " directory

if [ ! -d "$directory" ]; then
    echo "Directory not found."
    exit 1
fi

size=$(du -sh "$directory" | cut -f1)

echo
echo "Directory: $directory"
echo "Total size: $size"