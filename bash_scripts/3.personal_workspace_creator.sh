# Personal Workspace Creator

# Goal: Write a script that creates your own project workspace.

# When executed:

# ./setup.sh

# It should create:

# workspace/
# ├── documents/
# ├── images/
# ├── projects/
# ├── notes/
# └── backups/

# Inside documents:
# 1. README.md
# 2. todo.txt

mkdir -p workspace/documents workspace/images workspace/projects workspace/notes workspace/backups
cd workspace/documents
touch README.md todo.txt