if [ $# -ne 1 ]; then
    echo "Usage: $0 package.deb"
    exit 1
fi

package="$1"

if [ ! -f "$package" ]; then
    echo "Error: File '$package' not found."
    exit 1
fi

if [[ "$package" != *.deb ]]; then
    echo "Error: Please provide a .deb file."
    exit 1
fi

echo "================================="
echo "       DEB INSTALLER"
echo "================================="

echo
echo "Package contents:"
dpkg-deb -c "$package"

echo
echo "Package information:"
dpkg-deb -I "$package"

echo
read -p "Do you want to install this package? [y/N]: " choice

case "$choice" in
    y|Y)
        echo
        echo "Installing $package..."
        
        if sudo dpkg -i "$package"; then
            echo
            echo "Installation successful."
        else
            echo
            echo "Installation failed."
            echo "The package may have missing dependencies."
            echo
            read -p "Do you want to try fixing dependencies with 'apt -f install'? [y/N]: " fix

            case "$fix" in
                y|Y)
                    sudo apt -f install
                    ;;
                *)
                    echo "Dependency repair skipped."
                    ;;
            esac
        fi
        ;;

    n|N|"")
        echo "Installation cancelled."
        ;;

    *)
        echo "Invalid choice. Installation cancelled."
        ;;
esac