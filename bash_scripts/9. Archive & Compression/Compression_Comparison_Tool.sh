directory="$1"

if [ ! -d "$directory" ]; then
    echo "Directory not found"
    exit 1
fi

echo "Creating archives..."

tar -cvf backup.tar "$directory"
tar -cvzf backup.tar.gz "$directory"
tar -cvjf backup.tar.bz2 "$directory"
tar -cvJf backup.tar.xz "$directory"

echo
echo "===== COMPRESSION COMPARISON ====="
echo
echo "Format          Size"
echo "-------------------------"

echo "tar             $(wc -c < backup.tar) bytes"
echo "tar.gz          $(wc -c < backup.tar.gz) bytes"
echo "tar.bz2         $(wc -c < backup.tar.bz2) bytes"
echo "tar.xz          $(wc -c < backup.tar.xz) bytes"