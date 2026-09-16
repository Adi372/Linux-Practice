PACKAGE="$1"

if [ -z "$PACKAGE" ];
then
    echo "Usage: $0 <package-name>"
    exit 1
fi

if ! dpkg -s "$PACKAGE" > /dev/null;
then
    echo "Error: Pacakge '$PACAKGE' not found"
    exit 1
fi

echo "===== FILES INSTALLED BY $package ====="
echo
dpkg -L "$PACKAGE"