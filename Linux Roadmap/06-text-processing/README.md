# Module 06 — Text Processing

## grep — Search Text

```bash
grep "error" logfile.log          # Search for pattern
grep -i "error" logfile.log       # Case-insensitive
grep -r "TODO" ./src/             # Search recursively
grep -n "error" logfile.log       # Show line numbers
grep -v "debug" logfile.log       # Invert match (exclude)
grep -c "error" logfile.log       # Count matches
grep -E "err|warn" logfile.log    # Extended regex (OR)
grep -A 3 "error" logfile.log     # 3 lines after match
grep -B 3 "error" logfile.log     # 3 lines before match
```

## sed — Stream Editor

```bash
sed 's/old/new/' file.txt           # Replace first occurrence per line
sed 's/old/new/g' file.txt          # Replace all occurrences
sed -i 's/old/new/g' file.txt       # Edit file in-place
sed '/pattern/d' file.txt           # Delete matching lines
sed -n '5,10p' file.txt             # Print lines 5-10
sed '1d' file.txt                   # Delete first line
```

## awk — Text Processing Tool

```bash
awk '{print $1}' file.txt          # Print first column
awk '{print $1, $3}' file.txt      # Print columns 1 and 3
awk -F: '{print $1}' /etc/passwd   # Use : as delimiter
awk '{sum += $1} END {print sum}'  # Sum a column
awk 'NR > 1' file.txt              # Skip first line
awk '/pattern/ {print}' file.txt   # Print matching lines
```

## sort, uniq, cut, wc

```bash
sort file.txt                # Sort alphabetically
sort -n numbers.txt          # Sort numerically
sort -r file.txt             # Reverse sort
sort -u file.txt             # Sort and remove duplicates
uniq file.txt                # Remove consecutive duplicates
sort file.txt | uniq -c      # Count occurrences
cut -d: -f1 /etc/passwd      # Cut field 1 with : delimiter
cut -c1-10 file.txt          # Cut first 10 characters
wc -l file.txt               # Count lines
wc -w file.txt               # Count words
wc -c file.txt               # Count bytes
```

## Pipes & Redirection

```bash
command > file.txt           # Redirect stdout to file (overwrite)
command >> file.txt          # Append stdout to file
command 2> error.log         # Redirect stderr
command &> all.log           # Redirect both stdout and stderr
command1 | command2          # Pipe output of cmd1 to cmd2
cat file.txt | grep error | sort | uniq  # Chain multiple pipes
```

---

➡️ Next: [07 — Shell Scripting](../07-shell-scripting/README.md)
