PACKAGE="$1"

if [ -z "$PACKAGE" ];
then
    echo "Usage: $0 <keyword>"
    exit 1
fi

echo "Matching installed packages: "
dpkg -l | awk '$2 ~ /git/ {print $2}'