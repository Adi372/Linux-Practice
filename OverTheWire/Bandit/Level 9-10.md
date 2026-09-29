# Bandit Level 9 → Level 10

## Objective

Find the password in `data.txt`.

The password is hidden among a few **human-readable strings** and is preceded by several `=` characters.

## Command Used

```bash
strings data.txt | grep "^="
```

This extracts readable strings from the file and searches for lines beginning with `=`.

## Command Breakdown

* `strings data.txt` → Extracts human-readable character sequences from the file.
* `|` → Sends the output of `strings` to `grep`.
* `grep "^="` → Finds lines that start with `=`.
* `^` → Represents the **start of a line** in a regular expression.

### Why `strings`?

`data.txt` contains binary/non-readable data, so using:

```bash
cat data.txt
```

would produce a lot of meaningless characters.

`strings` filters this and shows only sequences of readable characters.

## Key Takeaway

When a file contains binary or unreadable data but the challenge mentions **human-readable strings**, use:

```bash
strings filename
```

And when you need lines starting with a specific character:

```bash
grep "^character"
```

For this challenge, combining them:

```bash
strings data.txt | grep "^="
```

allows us to quickly locate the relevant string.
