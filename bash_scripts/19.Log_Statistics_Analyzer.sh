# Log Statistics Analyzer

# Generate:
# ===== LOG STATISTICS =====

# Lines      :
# Words      :
# Characters :

echo "You provided: $1"
lines=$(wc -l < "$1")
words=$(wc -w < "$1")
characters=$(wc -m < "$1")
echo "===== LOG STATISTICS ====="
echo 
echo "Lines      : $lines"
echo "Words      : $words"
echo "Characters : $characters"