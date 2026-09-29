# Bandit Level 2 → Level 3

### Goal

The goal was to find the password for `bandit3`. The password was stored in a file named:

```text
--spaces in this filename--
```

### Step 1: Check the File

I used:

```bash
ls
```

The output showed:

```text
--spaces in this filename--
```

### Step 2: Read the File

Based on the previous level, I recognized that the filename both **starts with `-`** and **contains spaces**.

I used:

```bash
cat "./--spaces in this filename--"
```

This worked and displayed the password for `bandit3`.

I was able to solve this on my first attempt because I applied what I learned in the previous level about using `./` for filenames beginning with `-`.

### Step 3: Log Into the Next Level

I exited the current session:

```bash
exit
```

Then connected to `bandit3` from my local Kali terminal:

```bash
ssh -p 2220 bandit3@bandit.labs.overthewire.org
```

### What I Learned

* Spaces in filenames must be handled properly by the shell.
* Quotation marks can be used to treat a filename containing spaces as a single argument.
* `./` can prevent a filename beginning with `-` from being interpreted as an option.
* Concepts learned from previous levels can be applied to solve new problems.

### Result

Successfully found the password for `bandit3` and logged into **Bandit Level 3**.
