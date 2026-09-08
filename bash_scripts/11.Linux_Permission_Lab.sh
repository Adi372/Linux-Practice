#!/bin/bash

mkdir -p permission-lab/private

echo "Created Directory to experiment with permissions"
ls -ld permission-lab/private

echo
echo "Some permissions will be applied on the folder to check:"
echo "Who can read it?"
echo "Who can modify it?"
echo "Who can execute it?"
echo "Can I enter the directory?"
echo
echo "Available permissions:"
echo "chmod 000 | chmod 400 | chmod 600 | chmod 644 | chmod 700 | chmod 755 | chmod 770 | chmod 775"
echo

# ---------------- 000 ----------------

chmod 000 permission-lab/private

echo
echo "Applied 000 on private"
ls -ld permission-lab/private

echo "Checking permissions..."

if ls permission-lab/private
then
    echo "Can read the contents"
else
    echo "Cannot read the contents. Permission Denied."
fi

if touch permission-lab/private/test.txt
then
    echo "Can modify the directory"
else
    echo "Cannot modify the directory. Permission Denied."
fi

if cd permission-lab/private
then
    echo "Can enter the directory"
    cd ../..
else
    echo "Cannot enter the directory. Permission Denied."
fi


# ---------------- 400 ----------------

chmod 400 permission-lab/private

echo
echo "Applied 400 on private"
ls -ld permission-lab/private

echo "Checking permissions..."

if ls permission-lab/private
then
    echo "Can read the contents"
else
    echo "Cannot read the contents. Permission Denied."
fi

if touch permission-lab/private/test.txt
then
    echo "Can modify the directory"
else
    echo "Cannot modify the directory. Permission Denied."
fi

if cd permission-lab/private
then
    echo "Can enter the directory"
    cd ../..
else
    echo "Cannot enter the directory. Permission Denied."
fi


# ---------------- 600 ----------------

chmod 600 permission-lab/private

echo
echo "Applied 600 on private"
ls -ld permission-lab/private

echo "Checking permissions..."

if ls permission-lab/private
then
    echo "Can read the contents"
else
    echo "Cannot read the contents. Permission Denied."
fi

if touch permission-lab/private/test.txt
then
    echo "Can modify the directory"
else
    echo "Cannot modify the directory. Permission Denied."
fi

if cd permission-lab/private
then
    echo "Can enter the directory"
    cd ../..
else
    echo "Cannot enter the directory. Permission Denied."
fi


# ---------------- 644 ----------------

chmod 644 permission-lab/private

echo
echo "Applied 644 on private"
ls -ld permission-lab/private

echo "Checking permissions..."

if ls permission-lab/private
then
    echo "Can read the contents"
else
    echo "Cannot read the contents. Permission Denied."
fi

if touch permission-lab/private/test.txt
then
    echo "Can modify the directory"
else
    echo "Cannot modify the directory. Permission Denied."
fi

if cd permission-lab/private
then
    echo "Can enter the directory"
    cd ../..
else
    echo "Cannot enter the directory. Permission Denied."
fi


# ---------------- 700 ----------------

chmod 700 permission-lab/private

echo
echo "Applied 700 on private"
ls -ld permission-lab/private

echo "Checking permissions..."

if ls permission-lab/private
then
    echo "Can read the contents"
else
    echo "Cannot read the contents. Permission Denied."
fi

if touch permission-lab/private/test.txt
then
    echo "Can modify the directory"
else
    echo "Cannot modify the directory. Permission Denied."
fi

if cd permission-lab/private
then
    echo "Can enter the directory"
    cd ../..
else
    echo "Cannot enter the directory. Permission Denied."
fi


# ---------------- 755 ----------------

chmod 755 permission-lab/private

echo
echo "Applied 755 on private"
ls -ld permission-lab/private

echo "Checking permissions..."

if ls permission-lab/private
then
    echo "Can read the contents"
else
    echo "Cannot read the contents. Permission Denied."
fi

if touch permission-lab/private/test.txt
then
    echo "Can modify the directory"
else
    echo "Cannot modify the directory. Permission Denied."
fi

if cd permission-lab/private
then
    echo "Can enter the directory"
    cd ../..
else
    echo "Cannot enter the directory. Permission Denied."
fi


# ---------------- 770 ----------------

chmod 770 permission-lab/private

echo
echo "Applied 770 on private"
ls -ld permission-lab/private

echo "Checking permissions..."

if ls permission-lab/private
then
    echo "Can read the contents"
else
    echo "Cannot read the contents. Permission Denied."
fi

if touch permission-lab/private/test.txt
then
    echo "Can modify the directory"
else
    echo "Cannot modify the directory. Permission Denied."
fi

if cd permission-lab/private
then
    echo "Can enter the directory"
    cd ../..
else
    echo "Cannot enter the directory. Permission Denied."
fi


# ---------------- 775 ----------------

chmod 775 permission-lab/private

echo
echo "Applied 775 on private"
ls -ld permission-lab/private

echo "Checking permissions..."

if ls permission-lab/private
then
    echo "Can read the contents"
else
    echo "Cannot read the contents. Permission Denied."
fi

if touch permission-lab/private/test.txt
then
    echo "Can modify the directory"
else
    echo "Cannot modify the directory. Permission Denied."
fi

if cd permission-lab/private
then
    echo "Can enter the directory"
    cd ../..
else
    echo "Cannot enter the directory. Permission Denied."
fi

echo
echo "Permission experiment completed."