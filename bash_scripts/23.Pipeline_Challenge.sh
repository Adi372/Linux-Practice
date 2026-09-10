# Pipeline Challenge

# Create one script that performs a multi-stage pipeline.

# For example:
# raw data
#    ↓
# filter
#    ↓
# extract field
#    ↓
# transform
#    ↓
# sort
#    ↓
# display

# You should deliberately solve the problem using pipes rather than temporary files wherever possible.

cat > IPAddressLOG.txt << EOF
192.168.1.10 GET /login
192.168.1.11 GET /home
192.168.1.10 GET /dashboard
192.168.1.12 GET /login
192.168.1.10 GET /login
192.168.1.11 GET /home
192.168.1.13 GET /login
192.168.1.10 GET /settings
192.168.1.12 GET /login
192.168.1.14 GET /home
192.168.1.10 GET /login
192.168.1.13 GET /login
192.168.1.11 GET /dashboard
192.168.1.12 GET /home
EOF

echo "Log data:"
cat IPAddressLOG.txt
echo
echo "Unique IP count with the Unique IP in /login:"
grep "/login" IPAddressLOG.txt | cut -d " " -f 1 | sort | uniq -c | sort -n -r | head -5