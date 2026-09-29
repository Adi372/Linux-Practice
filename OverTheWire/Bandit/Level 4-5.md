# Bandit Level 4 → Level 5

### Goal

The goal was to find the password for `bandit5`. The password was stored in the **only human-readable file** inside the `inhere` directory.

### Step 1: Enter the Directory

I first listed the contents of the home directory:

```bash
ls
```

I found:

```text
inhere
```

I entered the directory:

```bash
cd inhere/
```

### Step 2: List the Files

I tried:

```bash
tree .
```

but `tree` was not installed on the Bandit server.

Instead, I used:

```bash
ls
```

This showed 10 files:

```text
-file00  -file01  -file02  -file03  -file04
-file05  -file06  -file07  -file08  -file09
```

### Step 3: Find the Human-Readable File

I manually tried reading some of the files using:

```bash
cat ./-file00
cat ./-file01
cat ./-file02
```

The output appeared as unreadable/binary data.

I eventually tried:

```bash
cat ./-file07
```

This produced readable text:

```text
6C7h9GD8M6ai5nr7wo1RonrzFjj9yIrG
```

This was the password for `bandit5`.

### Later Discovery

After solving the level, I discovered that there was a more efficient way to identify the correct file using the `file` command.

I could have used:

```bash
file ./*
```

This checks the type of every file in the current directory and would identify `-file07` as a text file while the other files were identified as data/binary files.

I could then read it directly with:

```bash
cat ./-file07
```

This would have been much faster than manually checking each file.

### Step 4: Log Into the Next Level

I exited the `bandit4` session:

```bash
exit
```

Then connected to `bandit5` from my local Kali terminal:

```bash
ssh -p 2220 bandit5@bandit.labs.overthewire.org
```

I entered the password found in `-file07`.

### What I Learned

* `file` can be used to identify the type of a file.
* Binary data may appear as unreadable characters when displayed with `cat`.
* `./*` can be used to apply a command to all files in the current directory.
* The wording of a challenge often gives a clue about which command to use.
* There can be more efficient solutions than manually checking every file.

### Result

Successfully found the password for `bandit5` and logged into **Bandit Level 5**.

**Note:** I solved the challenge manually first and later discovered `file ./*` as a more efficient approach.
