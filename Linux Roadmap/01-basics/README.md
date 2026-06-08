# Module 01 — Linux Basics & Navigation

## What is Linux?

Linux is an open-source operating system kernel. It powers servers, smartphones (Android), supercomputers, and everyday PCs.

## The Terminal

The **terminal** is how you interact with Linux using text commands.
Open a terminal: `Ctrl + Alt + T` on most desktop distributions.

---

## Essential Commands

### Navigating

```bash
pwd               # Print Working Directory
ls                # List files and directories
ls -l             # Long listing (detailed)
ls -la            # Include hidden files
ls -lh            # Human-readable sizes
cd /home          # Change to /home
cd ..             # Go up one level
cd ~              # Go to your home directory
cd -              # Go back to previous directory
```

### Getting Help

```bash
man ls            # Manual page for ls
ls --help         # Quick help
whatis ls         # One-line description
apropos keyword   # Search manual pages
```

### System Information

```bash
uname -a          # Full system info
hostname          # System hostname
whoami            # Current user
id                # User ID and groups
uptime            # System uptime
date              # Current date/time
```

---

## Command Structure

```
command  [options]  [arguments]
  ls       -la      /home/user
```

---

## Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `Tab` | Auto-complete |
| `↑ / ↓` | Command history |
| `Ctrl + C` | Cancel command |
| `Ctrl + L` | Clear screen |
| `Ctrl + R` | Search history |
| `Ctrl + D` | Log out |

---

➡️ Next: [02 — File System](../02-file-system/README.md)
