# Bandit Level 1 → Level 2

### Goal

The goal was to find the password for `bandit2`. The password was stored in a file named `-` in the home directory.

### Step 1: Check the Files

I used:

```bash
ls
```

The output showed:

```text
-
```

### Step 2: Try to Read the File

My first attempt was:

```bash
cat -
```

This did not display the password as expected.

I then tried to check the file type:

```bash
file -
```

This also did not work as expected because `-` has a special meaning in Linux commands and can be interpreted as an option or standard input.

### Step 3: Read the File Correctly

I then tried:

```bash
cat ./-
```

This worked because `./` explicitly specifies that `-` is a filename in the current directory.

The command displayed the password for `bandit2`.

### Step 4: Log Into the Next Level

I exited the current Bandit session:

```bash
exit
```

Then I connected to `bandit2` from my local Kali machine:

```bash
ssh -p 2220 bandit2@bandit.labs.overthewire.org
```

I entered the password obtained from the `-` file.

### What I Learned

* `ls` can be used to identify files in a directory.
* `cat -` does not treat `-` as a normal filename.
* `file -` can also interpret `-` specially.
* `./-` explicitly refers to the file named `-` in the current directory.
* Troubleshooting failed commands can help identify how Linux interprets command-line arguments.

### Result

Successfully found the password for `bandit2` and logged into **Bandit Level 2**.
