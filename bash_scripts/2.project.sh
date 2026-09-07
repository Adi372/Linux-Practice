# Exercises:
# Create a directory structure:
# 1. Create a directory called "project" in your home directory.
# 2. Inside "project", create three subdirectories: "docs", "src", and "tests".
# 3. In each subdirectory, create an empty file called "README.md".

# Navigation practice:
# 1. Starting from your home directory, navigate to the "src" directory you just created using a single command.
# 2. List the contents of the "src" directory.
# 3. Move back to the "project" directory.
# 4. List all subdirectories of "project" in long format.

# File manipulation:
# 1. Create a file called "todo.txt" in the "project" directory.
# 2. Add the line "Complete Bash scripting course" to "todo.txt" using the echo command and output redirection.
# 3. Make a copy of "todo.txt" in the "docs" directory.
# 4. Rename the copy to "tasks.txt".

# Search and display:
# 1. Use the find command to locate all "README.md" files in the "project" directory and its subdirectories.
# 2. Use grep to search for the word "Complete" in all text files within the "project" directory.

# Cleanup:
# 1. Remove the "tests" directory and all its contents.
# 2. Move the "tasks.txt" file from "docs" to "src". Bonus Challenge: Write a Bash script that automates the creation of the directory structure from Exercise 1.


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