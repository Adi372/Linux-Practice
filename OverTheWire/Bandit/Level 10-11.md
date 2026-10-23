# Bandit Level 10 → Level 11

## Objective

Find the password stored in `data.txt`.

The file contains **Base64-encoded data**, so it needs to be decoded.

## Command Used

```bash
base64 -d data.txt
```

This decodes the contents of `data.txt` and displays the original text, which contains the password.

I also used:

```bash
cat data.txt | base64 -d
```

It produces the same result, but `cat` is unnecessary because `base64` can read the file directly.

## Command Breakdown

* `base64` → Used to encode or decode Base64 data.
* `-d` → Decode the input.
* `data.txt` → The file containing the encoded data.

### Example

```bash
echo "hello" | base64
```

produces Base64-encoded text.

To decode it:

```bash
echo "aGVsbG8=" | base64 -d
```

produces:

```text
hello
```

## Key Takeaway

Base64 is **encoding, not encryption**. It can be easily decoded when the original data is Base64-encoded.

Useful commands:

```bash
base64 file
```

→ Encode

```bash
base64 -d file
```

→ Decode
