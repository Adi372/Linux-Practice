echo "Your entered directory name: $1"
mkdir -p "$1"/src "$1"/tests "$1"/docs "$1"/config
touch "$1"/README.md
tree "$1"