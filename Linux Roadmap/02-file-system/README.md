# Module 02 — The Linux File System

## Directory Structure

```
/
├── bin/       # Essential binaries (ls, cp, mv...)
├── boot/      # Kernel and boot files
├── dev/       # Device files
├── etc/       # Configuration files
├── home/      # User home directories
├── lib/       # Shared libraries
├── media/     # Removable media mounts
├── opt/       # Optional software
├── proc/      # Process information (virtual)
├── root/      # Root user home
├── sbin/      # System binaries
├── tmp/       # Temporary files
├── usr/       # User programs
└── var/       # Logs and variable data
```

---

## Working with Files

```bash
touch file.txt           # Create empty file
echo "hello" > file.txt  # Create file with content
cat file.txt             # Display file
less file.txt            # Page through file
head -n 10 file.txt      # First 10 lines
tail -n 10 file.txt      # Last 10 lines
tail -f app.log          # Follow file in real-time
```

## Copying, Moving, Deleting

```bash
cp file.txt copy.txt     # Copy file
cp -r dir/ newdir/       # Copy directory
mv file.txt newname.txt  # Rename/move
rm file.txt              # Delete file
rm -rf mydir/            # Force delete directory
mkdir projects           # Create directory
mkdir -p a/b/c           # Create nested dirs
```

## Finding Files

```bash
find . -name "*.log"     # Find by name pattern
find . -type d           # Find only directories
find . -size +100M       # Files larger than 100MB
find . -mtime -7         # Modified in last 7 days
which python3            # Locate a command
```

## Disk Usage

```bash
df -h                    # Filesystem disk space
du -sh /home/user        # Directory size
du -sh *                 # Size of all items here
```

---

➡️ Next: [03 — Permissions](../03-permissions/README.md)
