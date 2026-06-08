# Module 08 — Package Management

## apt — Debian/Ubuntu

```bash
# Update package lists
sudo apt update

# Upgrade installed packages
sudo apt upgrade
sudo apt full-upgrade        # Also handles dependency changes

# Install packages
sudo apt install nginx
sudo apt install nginx git curl  # Multiple packages

# Remove packages
sudo apt remove nginx          # Remove but keep config
sudo apt purge nginx           # Remove including config
sudo apt autoremove            # Remove unneeded dependencies

# Search and info
apt search keyword
apt show nginx                 # Show package details
apt list --installed           # List installed packages
dpkg -l                        # Detailed installed list
dpkg -L nginx                  # Files installed by package
```

## dnf/yum — Fedora/RHEL/CentOS

```bash
sudo dnf update               # Update all packages
sudo dnf install nginx        # Install
sudo dnf remove nginx         # Remove
sudo dnf search keyword       # Search
sudo dnf info nginx           # Package info
sudo dnf list installed       # List installed
```

## pacman — Arch Linux

```bash
sudo pacman -Syu              # Update system
sudo pacman -S nginx          # Install
sudo pacman -R nginx          # Remove
sudo pacman -Ss keyword       # Search
sudo pacman -Q                # List installed
sudo pacman -Rns nginx        # Remove with dependencies
```

## snap — Universal Packages

```bash
snap find vlc                 # Search
sudo snap install vlc         # Install
sudo snap remove vlc          # Remove
snap list                     # List installed snaps
snap info vlc                 # Package info
```

## Building from Source

```bash
# General pattern
wget https://example.com/app-1.0.tar.gz
tar -xzf app-1.0.tar.gz
cd app-1.0/
./configure
make
sudo make install
```

---

➡️ Next: [09 — System Administration](../09-system-administration/README.md)
