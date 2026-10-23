# Bandit Level 7 → Level 8

## Objective

The password for the next level is stored in `data.txt` next to the word:

```text
millionth
```

## Steps

First, I listed the files:

```bash
ls
```

Output:

```text
data.txt
```

Then I searched for `millionth` inside the file:

```bash
cat data.txt | grep "millionth"
```

Output:

```text
millionth    VR1ljMayciFxbnUokuQmJFw6QC9VKtub
```

The value next to `millionth` was the password for the next level.

## Command Breakdown

```bash
cat data.txt
```

Displays the contents of `data.txt`.

```bash
grep "millionth"
```

Searches the input for lines containing the word `millionth`.

```bash
cat data.txt | grep "millionth"
```

The `|` (pipe) sends the output of `cat` directly into `grep`.

### Simpler Alternative

The `cat` is actually unnecessary. `grep` can read the file directly:

```bash
grep "millionth" data.txt
```

This is the cleaner command.

## Key Takeaway

`grep` is used to **search for specific text inside files**.

Basic pattern:

```bash
grep "text" filename
```

For large files, this is much more useful than manually reading the entire file.
