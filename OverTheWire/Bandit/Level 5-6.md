# Bandit Level 5 → Level 6

### Goal

The goal was to find the password for `bandit6`.

The password was stored in a file somewhere inside the `inhere` directory with these properties:

* Human-readable
* Exactly **1033 bytes**
* Not executable

### Step 1: Enter the Directory

I used:

```bash
ls
```

and found:

```text
inhere
```

Then:

```bash
cd inhere/
```

### Step 2: Find the Correct File

Since there were many directories and files, manually checking each one would be inefficient.

I first tried:

```bash
find . -f ! -executable -size -1034B
```

but this produced an error because `-f` is not the correct `find` predicate for regular files.

I corrected it to:

```bash
find . -type f ! -executable -size 1033c
```

This returned:

```text
./maybehere07/.file2
```

### Step 3: Read the File

I entered the directory:

```bash
cd ./maybehere07/
```

Then I read the hidden file:

```bash
cat ./.file2
```

This displayed the password for `bandit6`.

### Why the `find` Command Worked

```bash
find . -type f ! -executable -size 1033c
```

* `.` → search from the current directory
* `-type f` → only regular files
* `! -executable` → file must not be executable
* `-size 1033c` → exactly 1033 bytes
* `c` → size is measured in bytes

The command therefore searched through the directory structure and returned the file matching all the conditions.

### Step 4: Log Into the Next Level

I exited the `bandit5` session:

```bash
exit
```

Then, from my local Kali terminal, I connected to `bandit6`:

```bash
ssh -p 2220 bandit6@bandit.labs.overthewire.org
```

I entered the password found in `.file2`.

### What I Learned

* `find` can search recursively through directories.
* `find` can combine multiple conditions.
* `-type f` identifies regular files.
* `! -executable` finds files that are not executable.
* `-size 1033c` searches for files exactly 1033 bytes in size.
* Hidden files can be accessed using their exact path, such as `./.file2`.
* A failed command can be corrected by understanding the syntax instead of guessing.

### Result

Successfully found the 1033-byte, non-executable file, obtained the password for `bandit6`, and logged into **Bandit Level 6**.
