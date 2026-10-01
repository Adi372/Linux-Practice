read -p "Command: " command
read -p "Nice value: " nice_value

echo
echo "Starting command with nice value $nice_value..."

nice -n "$nice_value" $command