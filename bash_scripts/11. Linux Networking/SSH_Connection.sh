read -p "Enter username: " username
read -p "Enter IP address: " ip

ssh "$username@$ip"


# Common SSH Connection Methods:

# 1. Username + IP
# ssh user@192.168.1.100

# 2. Username + Hostname
# ssh user@server

# 3. Custom SSH Port
# ssh -p 2222 user@192.168.1.100

# 4. SSH Key
# ssh -i ~/.ssh/id_ed25519 user@192.168.1.100