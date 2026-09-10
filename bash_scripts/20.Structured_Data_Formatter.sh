# Structured Data Formatter

# Create a file such as:
# users.txt

# containing delimited data:
# aditya:19:student
# rahul:20:student
# aman:21:admin

# Your script should extract selected fields and display them neatly in columns.

# Example:
# NAME    AGE    ROLE
# aditya  19     student
# rahul   20     student
# aman    21     admin

cat > users.txt << EOF
aditya:19:student
rahul:20:student
aman:21:admin
EOF
echo "Original Data:"
cat users.txt
echo
echo "Structured Data:"
cut -d ":" -f 1,2,3 users.txt | column -t -s ":"