#!/bin/bash

echo "================================"
echo "        SERVICE MANAGER"
echo "================================"

read -p "Enter Service name: " service

echo
echo "1. Start"
echo "2. Stop"
echo "3. Restart"
echo "4. Reload"
echo "5. Status"
echo "6. Enable"
echo "7. Disable"
echo "8. Exit"

read -p "Enter your choice: " choice

case "$choice" in

    1)
        sudo systemctl start "$service"
        ;;

    2)
        sudo systemctl stop "$service"
        ;;

    3)
        sudo systemctl restart "$service"
        ;;

    4)
        sudo systemctl reload "$service"
        ;;

    5)
        systemctl status "$service"
        ;;

    6)
        sudo systemctl enable "$service"
        ;;

    7)
        sudo systemctl disable "$service"
        ;;

    8)
        exit 0
        ;;

    *)
        echo "Invalid Choice"
        ;;

esac