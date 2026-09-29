# Bandit Level 0 → Level 1

### Goal

The goal was to find the password for `bandit1`. The password was stored in a file called `readme` in the home directory of `bandit0`.

### Step 1: List the Files

I used:

```bash
ls
```

This showed:

```text
readme
```

### Step 2: Read the File

I used:

```bash
cat readme
```

This displayed the password for `bandit1`.

### Step 3: Save the Password

I saved the password on my local Kali machine for future reference.

### Step 4: Log Into the Next Level

I first exited the `bandit0` session:

```bash
exit
```

Then, from my local Kali terminal, I connected to `bandit1`:

```bash
ssh -p 2220 bandit1@bandit.labs.overthewire.org
```

I entered the password obtained from the `readme` file.

### Important Issue

Initially, I tried to connect to `bandit1` while still logged into `bandit0`. The server rejected the connection because OverTheWire does not allow connections from one Bandit session to another through localhost.

I therefore exited `bandit0` and connected directly from my Kali machine.

### What I Learned

* `ls` is used to list files.
* `cat` is used to read file contents.
* Passwords should be saved for future levels.
* The next Bandit level should be accessed directly from my local machine.
* SSH uses port `2220` for the Bandit server.

### Result

Successfully found the `bandit1` password and logged into **Bandit Level 1**.
