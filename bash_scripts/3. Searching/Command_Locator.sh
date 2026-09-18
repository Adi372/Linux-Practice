# Command Locator

# Output:
# Command: python
# Location: /usr/bin/python

while true
do
    read -p "Enter the command whose location you want to check: " command

    if [ "$command" ]
    then
        which "$command"
        break
    fi
done

