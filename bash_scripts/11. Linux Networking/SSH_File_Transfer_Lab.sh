read -p "Enter username: " username
read -p "Enter hostname/IP: " host

server="$username@$host"

while true
do
    echo
    echo "===== SCP FILE TRANSFER TOOL ====="
    echo
    echo "1. Local → Remote"
    echo "2. Remote → Local"
    echo "3. Directory → Remote"
    echo "4. Exit"
    echo

    read -p "Enter choice: " choice

    case $choice in
        1)
            read -p "Enter local file: " file
            read -p "Enter remote directory: " remote_dir

            scp "$file" "$server:$remote_dir"
            ;;

        2)
            read -p "Enter remote file path: " remote_file
            read -p "Enter local directory: " local_dir

            scp "$server:$remote_file" "$local_dir"
            ;;

        3)
            read -p "Enter local directory: " directory
            read -p "Enter remote directory: " remote_dir

            scp -r "$directory" "$server:$remote_dir"
            ;;

        4)
            echo "Exiting..."
            break
            ;;

        *)
            echo "Invalid choice."
            ;;
    esac
done