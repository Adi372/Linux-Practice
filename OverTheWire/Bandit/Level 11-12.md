# Bandit Level 11 → Level 12

### Goal

The goal was to find the password for `bandit12`.

The password was stored in `data.txt`, but all uppercase and lowercase letters had been rotated by **13 positions (ROT13)**.

### Step 1: View the File

I used:

```bash
cat data.txt
```

The contents were encoded using ROT13, so the password was not directly readable.

### Step 2: Decode Using `tr`

I used:

```bash
cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
```

The `tr` command translates characters from one set to another.

Here:

```text
A-Z → N-ZA-M
a-z → n-za-m
```

This reverses the ROT13 transformation.

The command returned:

```text
The password is GROozWPO8QyN0mGrjUkID0WCYkZiQxrN
```

Therefore, the password for `bandit12` was:

```text
GROozWPO8QyN0mGrjUkID0WCYkZiQxrN
```

### What I Learned

* ROT13 rotates each letter by 13 positions.
* `tr` can be used to translate characters.
* Character ranges such as `A-Z` and `a-z` can be used with `tr`.
* The ROT13 transformation is reversible, so applying the same rotation again decodes it.
* The pipe `|` passes the output of one command to another.

### Result

Successfully decoded the ROT13 text and obtained the password for **Bandit Level 12**.
