PACKAGE="$1"

if ! dpkg -s "$PACKAGE" > /dev/null 
then
    echo "Package '$PACKAGE' is not installed or does not exist."
    exit 1
fi

VERSION=$(dpkg -s "$PACKAGE" | grep "Version")
PACK=$(dpkg -s "$PACKAGE" | grep "Package")
ARCHITECTURE=$(dpkg -s "$PACKAGE" | grep "Architecture:")
DESCRIPTION=$(dpkg -s "$PACKAGE" | grep "Description")
STATUS=$(dpkg -s "$PACKAGE" | grep "Status")

echo "===== PACKAGE INFORMATION ====="
echo
echo "$PACK"
echo "$VERSION"
echo "$ARCHITECTURE"
echo "$DESCRIPTION"
echo "$STATUS"