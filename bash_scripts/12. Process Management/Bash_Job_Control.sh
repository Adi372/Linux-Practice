while true
do
    echo
    echo "================================"
    echo "          JOB MANAGER"
    echo "================================"
    echo
    echo "1. Start background job"
    echo "2. Show jobs"
    echo "3. Resume job in background"
    echo "4. Bring job to foreground"
    echo "5. Exit"
    echo

    read -p "Enter choice: " choice

    case $choice in

        1)
            read -p "Enter command: " command
            $command &
            echo "Job started in background."
            ;;

        2)
            jobs
            ;;

        3)
            bg
            ;;

        4)
            fg
            ;;

        5)
            echo "Exiting..."
            break
            ;;

        *)
            echo "Invalid choice."
            ;;

    esac
done