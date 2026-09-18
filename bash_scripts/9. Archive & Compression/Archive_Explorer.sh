archive="$1"

if [ ! -f "$archive" ]; then
    echo "Archive not found"
    exit 1
fi

while true
do
    echo
    echo "===== ARCHIVE INFORMATION ====="
    echo
    echo "Archive: $archive"
    echo

    echo "1. List contents"
    echo "2. Detailed contents"
    echo "3. Extract archive"
    echo "4. Exit"
    echo

    read -p "Enter a choice: " choice

    case "$choice" in

        1)
            echo
            echo "Contents:"
            tar -tf "$archive"
            ;;

        2)
            echo
            echo "Detailed contents:"
            tar -tvf "$archive"
            ;;

        3)
            echo
            tar -xvf "$archive"
            echo "Extraction completed!"
            ;;

        4)
            exit 0
            ;;

        *)
            echo "Invalid Input"
            ;;

    esac
done