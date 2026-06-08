# 🐧 Linux Quick Reference Cheatsheet

## Navigation
| Command | Description |
|---------|-------------|
| `pwd` | Current directory |
| `ls -la` | List all files with details |
| `cd ~` | Go to home |
| `cd -` | Go back |

## File Operations
| Command | Description |
|---------|-------------|
| `cp -r src/ dst/` | Copy directory |
| `mv old new` | Move/rename |
| `rm -rf dir/` | Force delete |
| `find . -name "*.log"` | Find files |
| `touch file.txt` | Create empty file |

## Text & Search
| Command | Description |
|---------|-------------|
| `grep -ri "text" .` | Search recursively, case-insensitive |
| `grep -n "text" file` | Show line numbers |
| `sed 's/old/new/g' file` | Replace text |
| `awk '{print $1}' file` | Print first column |
| `sort \| uniq -c \| sort -rn` | Count and rank occurrences |

## Permissions
| Command | Description |
|---------|-------------|
| `chmod 755 file` | rwxr-xr-x |
| `chmod 644 file` | rw-r--r-- |
| `chown user:group file` | Change owner |
| `sudo command` | Run as root |

## Processes
| Command | Description |
|---------|-------------|
| `ps aux` | List all processes |
| `kill -9 PID` | Force kill |
| `top` / `htop` | Live monitor |
| `command &` | Run in background |
| `Ctrl+Z` then `bg` | Background current job |

## Networking
| Command | Description |
|---------|-------------|
| `ip addr` | Show IP addresses |
| `ss -tuln` | Show listening ports |
| `curl -I https://example.com` | Get HTTP headers |
| `ssh user@host` | Connect via SSH |
| `scp file user@host:/path` | Copy file over SSH |

## Disk & Memory
| Command | Description |
|---------|-------------|
| `df -h` | Disk space |
| `du -sh dir/` | Directory size |
| `free -h` | Memory usage |

## Services (systemd)
| Command | Description |
|---------|-------------|
| `systemctl status nginx` | Service status |
| `systemctl start/stop/restart nginx` | Control service |
| `systemctl enable nginx` | Start on boot |
| `journalctl -u nginx -f` | Follow service logs |

## Package Management
| System | Update | Install | Remove |
|--------|--------|---------|--------|
| Ubuntu/Debian | `apt update && apt upgrade` | `apt install pkg` | `apt remove pkg` |
| Fedora | `dnf update` | `dnf install pkg` | `dnf remove pkg` |
| Arch | `pacman -Syu` | `pacman -S pkg` | `pacman -R pkg` |

## Keyboard Shortcuts
| Shortcut | Action |
|----------|--------|
| `Tab` | Autocomplete |
| `Ctrl+C` | Cancel |
| `Ctrl+L` | Clear screen |
| `Ctrl+R` | Search history |
| `Ctrl+Z` | Suspend job |
| `!!` | Repeat last command |
