# Module 10 — Advanced Topics

## Environment Variables

```bash
# View variables
env                          # All environment variables
echo $PATH                   # Your command search path
echo $HOME                   # Home directory
echo $USER                   # Current username
echo $SHELL                  # Current shell

# Set variables
export MY_VAR="hello"        # Set and export to child processes
export PATH="$PATH:/usr/local/myapp/bin"  # Add to PATH

# Permanent variables — add to ~/.bashrc or ~/.bash_profile
echo 'export MY_VAR="hello"' >> ~/.bashrc
source ~/.bashrc              # Reload config
```

## Compression & Archives

```bash
# tar
tar -czf archive.tar.gz dir/       # Create compressed archive
tar -xzf archive.tar.gz            # Extract
tar -tzf archive.tar.gz            # List contents
tar -xzf archive.tar.gz -C /dest   # Extract to specific path

# zip/unzip
zip archive.zip file1 file2
zip -r archive.zip dir/
unzip archive.zip
unzip archive.zip -d /dest/

# gzip/bzip2
gzip file.txt            # Compress (creates file.txt.gz)
gunzip file.txt.gz       # Decompress
bzip2 file.txt           # Compress with bzip2 (better ratio)
bunzip2 file.txt.bz2     # Decompress
```

## Regular Expressions

```bash
# Basic patterns
.         # Any single character
*         # Zero or more of previous
+         # One or more (extended regex)
?         # Zero or one (extended regex)
^         # Start of line
$         # End of line
[abc]     # Any of a, b, or c
[^abc]    # Not a, b, or c
[a-z]     # Any lowercase letter
\d        # Digit (Perl-compatible)
\w        # Word character

# Examples with grep -E
grep -E "^ERROR" logfile.log          # Lines starting with ERROR
grep -E "\.txt$" file_list.txt        # Lines ending with .txt
grep -E "[0-9]{1,3}\.[0-9]{1,3}" ip.txt  # IP-like patterns
grep -E "(error|warning)" log.txt     # error OR warning
```

## SSH Advanced

```bash
# Key-based authentication (more secure than passwords)
ssh-keygen -t ed25519 -C "your@email.com"   # Generate key pair
ssh-copy-id user@server                      # Copy public key to server
cat ~/.ssh/id_ed25519.pub                    # View public key

# SSH config (~/.ssh/config)
Host myserver
    HostName 192.168.1.100
    User ali
    Port 22
    IdentityFile ~/.ssh/id_ed25519

# Then connect with:
ssh myserver

# SSH tunneling
ssh -L 8080:localhost:80 user@server   # Local port forwarding
ssh -R 9000:localhost:3000 user@server # Remote port forwarding
```

## tmux — Terminal Multiplexer

```bash
tmux                   # Start new session
tmux new -s mysession  # Named session
tmux attach -t mysession  # Reattach to session
tmux ls                # List sessions

# Inside tmux:
Ctrl+B c    # New window
Ctrl+B n    # Next window
Ctrl+B p    # Previous window
Ctrl+B %    # Split vertically
Ctrl+B "    # Split horizontally
Ctrl+B d    # Detach session (keeps running)
Ctrl+B [    # Scroll mode (q to exit)
```

## Bash Tips & Tricks

```bash
# History
history                  # Show command history
!!                       # Repeat last command
!ssh                     # Repeat last command starting with ssh
history | grep "apt"     # Search history

# Useful shortcuts
Ctrl+R                   # Reverse search history
Alt+.                    # Insert last argument of previous command
echo !$                  # Print last argument of previous command

# Parameter expansion
name="hello world"
echo ${name^^}           # HELLO WORLD (uppercase)
echo ${name//o/0}        # hell0 w0rld (replace)
echo ${name:0:5}         # hello (substring)
echo ${name:-default}    # Use default if empty

# Process substitution
diff <(ls dir1) <(ls dir2)   # Compare directory listings
```

---

Congratulations! You've completed the Linux curriculum. 🎉

Check the `exercises/` folder for practice challenges.
