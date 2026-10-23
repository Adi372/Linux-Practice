# Bandit Level 12 → Level 13

### Goal

The goal was to find the password for `bandit13`. The file `data.txt` was a hexdump of a file that had been compressed multiple times.

### Step 1: Create a Temporary Working Directory

I created a temporary directory using:

```bash
mktemp -d
```

Then entered the directory and copied the original file:

```bash
cd /tmp/tmp.nBqIKN7na4
cp ~/data.txt .
```

### Step 2: Convert the Hexdump

I checked the original file:

```bash
file data.txt
```

It was identified as ASCII text because the hexdump itself is stored as text.

I converted the hexdump back into binary data:

```bash
xxd -r data.txt data
```

Then checked the resulting file:

```bash
file data
```

It was identified as **gzip compressed data**.

### Step 3: Repeatedly Identify and Decompress

I used the `file` command after every decompression to determine the next format.

The process was:

```text
Hexdump
   ↓ xxd -r
gzip
   ↓ gzip -d
bzip2
   ↓ bzip2 -d
gzip
   ↓ gzip -d
tar
   ↓ tar -xf
tar
   ↓ tar -xf
bzip2
   ↓ bzip2 -d
tar
   ↓ tar -xf
gzip
   ↓ gzip -d
ASCII text
```

I renamed files with appropriate extensions when necessary, such as:

```bash
mv data data.gz
mv data data.bz2
mv data data.tar
```

and used the corresponding tools:

```bash
gzip -d
bzip2 -d
tar -xf
```

### Troubleshooting

At one point, after extracting `data6.bin`, I renamed it to `data.bz2` and accidentally ran:

```bash
bzip2 data
```

This produced:

```text
bzip2: Can't open input file data: No such file or directory.
```

I checked the directory with `ls`, realized the actual file was `data.bz2`, and corrected the filename before continuing.

### Step 4: Find the Password

After the final gzip layer was decompressed, I checked the resulting file:

```bash
file data8
```

It was identified as ASCII text.

I then used:

```bash
cat data8
```

This displayed the password for `bandit13`.

### What I Learned

* A hexdump can be converted back into binary data using `xxd -r`.
* The `file` command is useful for identifying unknown file types.
* Different compression formats require different tools.
* `tar` archives need to be extracted rather than decompressed with `gzip` or `bzip2`.
* Repeatedly checking the file type is important when dealing with multiple compression layers.
* File extensions are useful for organization, but the actual file type should be verified using `file`.
* Errors can be debugged by checking the current directory and verifying the actual filename.

### Result

Successfully extracted all compression layers, found the final text file, and obtained the password for **Bandit Level 13**.
