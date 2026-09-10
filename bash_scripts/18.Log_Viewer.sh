# Log Viewer

# Create a fake log
# Your program should allow:

# 1. Show first 10 lines
# 2. Show last 10 lines
# 3. Show first 20 lines
# 4. Show last 20 lines
# 5. Read complete log

cat > sampleLOG.txt << EOF
[INFO] Application started
[INFO] Database connected
[INFO] User login successful
[INFO] Loading configuration
[DEBUG] Checking server status
[INFO] Server running on port 3000
[INFO] Request received
[DEBUG] Processing request
[INFO] Response sent
[INFO] User logged out
[WARNING] High memory usage
[INFO] Memory usage normalized
[ERROR] Failed to connect to external API
[INFO] Retrying connection
[INFO] Connection restored
[DEBUG] Cleaning temporary files
[INFO] Backup started
[INFO] Backup completed
[INFO] Application running normally
[DEBUG] Health check completed
EOF
    
while true
do
    echo "===== LOG VIEWER ====="
    echo "1. Show first 10 lines"
    echo "2. Show last 10 lines"
    echo "3. Show first 20 lines"
    echo "4. Show last 20 lines"
    echo "5. Read complete log"
    echo "6. Exit"

    read -p "Enter your choice: " choice

    case $choice in

        1)
            head -n 10 sampleLOG.txt
            ;;

        2)
            tail -n 10 sampleLOG.txt
            ;;
        3)
            head -n 20 sampleLOG.txt
            ;;
        4)
            tail -n 20 sampleLOG.txt
            ;;
        5)
            cat sampleLOG.txt
            ;;
        6)
            echo "Exiting..."
            break
            ;;
        *) 
            echo "Invalid Choice"
            ;;
    esac
done