# Create a directory structure:
mkdir -p project/docs project/src project/tests
touch project/docs/README.md project/src/README.md project/tests/README.md

# Navigation practice:
cd project
ls src
ls -ld */

# File manipulation:
touch todo.txt
echo "Complete Bash scripting course" >> todo.txt
cp todo.txt docs/
mv docs/todo.txt docs/tasks.txt

# Search and display:
find . -name "README.md"
grep -r "Complete" --include="*.txt"

# Cleanup:
rm -r tests
mv docs/tasks.txt src/