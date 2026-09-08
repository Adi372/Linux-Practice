# Script Permission Manager

# Create:
# scripts/
# ├── backup.sh
# ├── deploy.sh
# ├── cleanup.sh
# └── readme.txt

# Your script should configure:
# *.sh → executable
# readme.txt → not executable

# Then verify using:
# ls -l

# Challenge:
# Have your script detect whether each .sh file is executable and fix it if necessary.



mkdir -p scripts
touch scripts/backup.sh scripts/deploy.sh scripts/cleanup.sh scripts/readme.txt
echo "Script files created successfully"

for file in scripts/*.sh 
do
    if [ -x  "$file" ]; then
        echo "$file is already executable"

    else
        echo "$file is not executable"

        while true 
        do
            read -p "Do you want to make it executable ? Y/N: " input

            if [ "$input" = "y" ] || [ "$input" = "Y" ]; then
                chmod +x "$file"
                echo "Execute permission added to $file"
                break

            elif [ "$input" = "n" ] || [ "$input" = "N" ]; then
                echo "Execute permission not added to $file"
                break

            else
                echo "Please enter Y or N"

            fi
        done
    fi
done
chmod -x scripts/readme.txt
echo "Final permissions: "
ls -l scripts/