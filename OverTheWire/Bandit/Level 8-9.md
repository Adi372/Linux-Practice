# Bandit Level 8 → Level 9

## Objective

Find the password in `data.txt`.

The password is the **only line that occurs exactly once** in the file.

## Command Used

```bash
sort data.txt | uniq -u
```

Output:

```text
EjmOSvuAu7sGAHqHVcBDPirRe9T03kxl
```

This was the password for the next level.

## Command Breakdown

* `sort data.txt` → Sorts all lines alphabetically, placing identical lines next to each other.
* `|` → Pipes the output of `sort` into `uniq`.
* `uniq -u` → Displays only lines that occur **once**.

### Why `sort` is necessary

`uniq` only detects duplicates when they are **next to each other**.

For example:

```text
apple
banana
apple
```

`uniq` won't identify the two `apple` lines as duplicates because they aren't adjacent.

After `sort`:

```text
apple
apple
banana
```

Now `uniq` can identify the duplicate.

## Alternative Command

I also used:

```bash
cat data.txt | sort | uniq -u
```

It produces the same result, but `cat` is unnecessary because `sort` can read `data.txt` directly.

## Key Takeaway

The important pattern is:

```bash
sort file | uniq -u
```

Use this when you need to find **lines that occur only once** in a file.
