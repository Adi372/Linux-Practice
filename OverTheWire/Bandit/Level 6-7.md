# Bandit Level 6 → Level 7

## Objective

Find the password for the next level. The file containing the password has:

* **Owner:** `bandit7`
* **Group:** `bandit6`
* **Size:** `33 bytes`
* **Location:** Somewhere on the server

## Command Used

```bash
find / -type f -user bandit7 -group bandit6 -size 33c 2>/dev/null
```

### Command Breakdown

* `find /` → Search the entire filesystem starting from `/`
* `-type f` → Search only regular files
* `-user bandit7` → File must be owned by `bandit7`
* `-group bandit6` → File must belong to group `bandit6`
* `-size 33c` → File must be exactly 33 bytes (`c` = bytes)
* `2>/dev/null` → Hide permission-denied and other error messages

The matching file path was then opened using:

```bash
cat /path/to/file
```

Its contents were the password for the next level.

## Mistake Made

Initially, I used:

```bash
find / type -f ...
```

The correct syntax is:

```bash
find / -type f ...
```

The `-` before `type` is required because `-type` is a `find` option.

## Key Takeaway

This challenge demonstrates how `find` can locate files based on multiple properties simultaneously.

A useful pattern to remember is:

```bash
find <location> <conditions>
```

For this challenge:

```text
Server-wide search → /
File → -type f
User → -user
Group → -group
Size → -size 33c
```
