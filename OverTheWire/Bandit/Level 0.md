# Bandit Level 0

### Goal

The goal was to log into the Bandit server using SSH.

### Command Used

```bash
ssh -p 2220 bandit0@bandit.labs.overthewire.org
```

### Why I Used It

* `ssh` → connects to a remote computer.
* `-p 2220` → connects using port `2220`.
* `bandit0` → username.
* `bandit.labs.overthewire.org` → server address.

Since this was my first connection to the server, SSH asked me to verify the server's identity. I entered:

```text
yes
```

Then it asked for the password:

```text
bandit0
```

After entering the password, I successfully logged into the Bandit server.

### What I Learned

I learned how to:

* Connect to a remote server using SSH.
* Connect to SSH using a specific port.
* Understand the SSH host authenticity warning.

### Result

Successfully completed **Bandit Level 0**.
