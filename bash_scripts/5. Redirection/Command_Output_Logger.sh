# Command Output Logger

# It should execute a command and save:
# output.txt
# error.txt

# Normal output goes to one file and errors to another.
# Also add an option to append instead of overwrite.

while true
do
    read -p "Enter a command: " command
    if [ "$command" ]
    then
        "$command" > output.txt 2> error.txt
        echo "Output stored in output.txt & Error stored in error.txt"
        break
    fi
done