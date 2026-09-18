# File Organizer

# Create:
# messy/
# ├── a.txt
# ├── b.txt
# ├── photo.jpg
# ├── image.png
# ├── notes.md
# ├── report.pdf
# └── data.csv

# Write a script that organizes them into:
# organized/
# ├── text/
# ├── images/
# ├── documents/
# └── data/

# For example:
# .txt → text/
# .md  → text/
# .jpg → images/
# .png → images/
# .pdf → documents/
# .csv → data/

mkdir -p messy
touch messy/a.txt messy/b.txt messy/photo.jpg messy/image.png messy/notes.md messy/report.pdf messy/data.csv 
mkdir -p organized/text organized/images organized/documents organized/data
mv messy/*.txt organized/text/
mv messy/*.md organized/text/
mv messy/*.jpg organized/images/
mv messy/*.png organized/images/
mv messy/*.pdf organized/documents/
mv messy/*.csv organized/data/