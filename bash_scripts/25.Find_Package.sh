PACKAGE="$1"

if ! dpkg -l "$PACKAGE" > /dev/null
then
    echo "Package '$PACKAGE' is not installed or does not exist"
else
    dpkg -l "$PACKAGE"
fi