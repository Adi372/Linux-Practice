DEB_FILE="$1"

if [ -z "$DEB_FILE" ];
then
    echo "Usage: $0 <package.deb>"
    exit 1
fi

if [ ! -f "$DEB_FILE" ];
then
    echo "Error: File not found: $DEB_FILE"
    exit 1
fi

echo "===== DEB PACKAGE ====="
echo
echo "Package Contents:"
dpkg -c "$DEB_FILE"

echo
echo "Architecture:"
dpkg-deb -f "$DEB_FILE" Architecture

echo
echo "Package Information:"
dpkg-db -f "$DEB_FILE"