read -p "Enter file to compress: " file

if [ ! -f "$file" ]; then
    echo "File not found"
    exit 1
fi

echo
echo "1. gzip"
echo "2. bzip2"
echo "3. xz"

read -p "Enter a choice: " choice

case "$choice" in

    1)
        gzip -k "$file"
        echo "Compressed using gzip"
        ;;

    2)
        bzip2 -k "$file"
        echo "Compressed using bzip2"
        ;;

    3)
        xz -k "$file"
        echo "Compressed using xz"
        ;;

    *)
        echo "Invalid choice"
        ;;

esac