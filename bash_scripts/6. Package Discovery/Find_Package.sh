PACKAGE="$1"

if [ -z "$PACKAGE" ];
then
    echo "Usage: $0 <keyword>"
    exit 1
fi

echo "Matching installed packages:"
dpkg -l | awk -v keyword="$PACKAGE" '$2 ~ keyword {print $2}'