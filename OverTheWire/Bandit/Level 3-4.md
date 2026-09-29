# Bandit Level 3 → Level 4

### Goal

The goal was to find the password for `bandit4`. The password was stored in a **hidden file** inside the `inhere` directory.

### Step 1: Find the Directory

I used:

```bash
ls
```

The output showed:

```text
inhere
```

I then entered the directory:

```bash
cd inhere/
```

### Step 2: Look for Hidden Files

I first used:

```bash
ls
```

No files were displayed.

Since the level mentioned a **hidden file**, I used:

```bash
ls -a
```

This displayed:

```text
.  ..  ...Hiding-From-You
```

The file I needed was:

```text
...Hiding-From-You
```

### Step 3: Read the Hidden File

I used:

```bash
cat ./...Hiding-From-You
```

This displayed the password for `bandit4`.

I used `./` to explicitly specify the file in the current directory.

### Step 4: Log Into the Next Level

I exited the `bandit3` session:

```bash
exit
```

Then, from my local Kali terminal, I connected to `bandit4`:

```bash
ssh -p 2220 bandit4@bandit.labs.overthewire.org
```

I entered the password obtained from the hidden file.

### What I Learned

* `ls` does not normally display hidden files.
* `ls -a` displays all files, including hidden files.
* `.` represents the current directory.
* `..` represents the parent directory.
* Hidden files in Linux usually have names beginning with `.`.
* A filename can contain multiple dots without being a standard hidden file name.
* `./filename` can be used to explicitly refer to a file in the current directory.

### Result

Successfully found the hidden file, obtained the password for `bandit4`, and logged into **Bandit Level 4**.
