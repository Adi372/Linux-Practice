# Bandit Level 13 → Level 14

### Goal

The goal was to access the password for `bandit14`.

Unlike previous levels, the password was not directly given to `bandit13`. Instead, a private SSH key was provided that could be used to log into `bandit14`.

### Step 1: Find the SSH Key

I listed the files in the home directory:

```bash
ls
```

I found:

```text
HINT
sshkey.private
```

The important file was:

```text
sshkey.private
```

### Step 2: Use the Private SSH Key

I used the private key to connect to `bandit14`:

```bash
ssh -i sshkey.private -p 2220 bandit14@bandit.labs.overthewire.org
```

Initially, I encountered errors because I attempted the connection from inside the Bandit server and later had to fix the private key's format and permissions.

I learned that private SSH keys must have restricted permissions:

```bash
chmod 600 sshkey.private
```

After correcting the key, I successfully logged into `bandit14`.

### Step 3: Find the Password File

The level stated that the password was stored in:

```text
/etc/bandit_pass/bandit14
```

I navigated to the directory:

```bash
cd /etc/bandit_pass/
```

Then checked the file:

```bash
file bandit14
```

It was identified as:

```text
bandit14: ASCII text
```

Finally, I read it:

```bash
cat bandit14
```

This displayed the password for the next level.

### What I Learned

* SSH can use private keys instead of passwords for authentication.
* The `-i` option specifies an SSH private key.
* Private SSH keys require restrictive file permissions.
* `chmod 600` allows only the owner to read and modify the key.
* Linux file permissions control who can access sensitive files.
* The `file` command can be used to identify a file's type.
* A user may have access to files that other users cannot read.

### Result

Successfully used an SSH private key to log into **bandit14** and retrieved the password from `/etc/bandit_pass/bandit14`.
