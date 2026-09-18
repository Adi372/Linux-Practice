while true
do
    echo
    echo "===== COMPRESSION & DECOMPRESSION MANAGER ====="
    echo
    echo "1. gzip"
    echo "2. bzip2"
    echo "3. xz"
    echo "4. Decompress gzip"
    echo "5. Decompress bzip2"
    echo "6. Decompress xz"
    echo "7. Exit"
    echo

    read -p "Enter a choice: " choice

    case "$choice" in

        1)
            read -p "Enter file to compress: " file
            gzip "$file"
            ;;

        2)
            read -p "Enter file to compress: " file
            bzip2 "$file"
            ;;

        3)
            read -p "Enter file to compress: " file
            xz "$file"
            ;;

        4)
            read -p "Enter .gz file: " file
            gzip -d "$file"
            ;;

        5)
            read -p "Enter .bz2 file: " file
            bzip2 -d "$file"
            ;;

        6)
            read -p "Enter .xz file: " file
            xz -d "$file"
            ;;

        7)
            echo "Exiting..."
            exit 0
            ;;

        *)
            echo "Invalid input"
            ;;

    esac
done