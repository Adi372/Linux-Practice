directory="$1"

if [ ! -d "$directory" ]; then
    echo "Directory not found."
    exit 1
fi

archive="${directory%/}.tar"

tar -cvf "$archive" "$directory"

echo
echo "Archive created: $archive"
echo
echo "Contents of archive:"
tar -tf "$archive"