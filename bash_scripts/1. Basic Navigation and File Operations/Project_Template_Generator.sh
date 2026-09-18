# Project Template Generator

# Run:
# ./create-project.sh cybersecurity-scanner

# It creates:
# cybersecurity-scanner/
# ├── src/
# ├── tests/
# ├── docs/
# ├── config/
# ├── logs/
# ├── README.md
# └── run.sh

# Then:
# ./create-project.sh hash-identifier
# creates another independent project.


mkdir -p "$1"/src "$1"/tests "$1"/docs "$1"/config "$1"/logs
touch "$1"/README.md "$1"/run.sh
echo "Project directory created successfully: "
ls "$1"