# Student Project Manager

# Create a Bash program:
# ./project-manager.sh

# Menu:
# ===== PROJECT MANAGER =====
# 1. Create project
# 2. List projects
# 3. Delete project
# 4. Backup project
# 5. Exit

# A project should automatically receive:
# project-name/
# ├── src/
# ├── tests/
# ├── docs/
# └── README.md


input=0
until [ "$input" -eq 5 ]; do
    echo "===== PROJECT MANAGER ====="
    echo "1. Create project"
    echo "2. List projects"
    echo "3. Delete project"
    echo "4. Backup project"
    echo "5. Exit"

    read input

    if [ "$input" -eq 1 ]; then
        mkdir -p project/src project/tests project/docs
        touch project/README.md
        echo "Project created successfully"

    elif [ "$input" -eq 2 ]; then
        ls project

    elif [ "$input" -eq 3 ]; then
        rm -r project
        echo "Project deleted"

    elif [ "$input" -eq 4 ]; then
        mkdir -p backup
        cp -r project backup/
        echo "Project backed up"

    elif [ "$input" -eq 5 ]; then 
        echo "Goodbye!"

    else 
        echo "Wrong input"
    fi
done