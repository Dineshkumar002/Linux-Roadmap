# Module 09 — System Administration

## User Management

```bash
# Create and manage users
sudo useradd -m -s /bin/bash ali    # Create user with home and shell
sudo passwd ali                      # Set password
sudo usermod -aG sudo ali           # Add to sudo group
sudo usermod -aG docker ali         # Add to docker group
sudo userdel ali                    # Delete user
sudo userdel -r ali                 # Delete user and home directory

# User info
cat /etc/passwd                     # All users
getent passwd ali                   # Info for specific user
groups ali                          # Groups user belongs to
id ali                              # UID, GID, groups

# Group management
sudo groupadd developers            # Create group
sudo groupdel developers            # Delete group
cat /etc/group                      # All groups
```

## Services (systemd)

```bash
# Control services
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl restart nginx
sudo systemctl reload nginx         # Reload config without restart

# Enable/disable on boot
sudo systemctl enable nginx
sudo systemctl disable nginx

# Status and logs
sudo systemctl status nginx
journalctl -u nginx                 # Logs for nginx
journalctl -u nginx -f              # Follow logs
journalctl --since "1 hour ago"     # Recent logs
journalctl -p err                   # Error-level logs only

# List services
systemctl list-units --type=service
systemctl list-units --state=failed
```

## Cron Jobs — Scheduled Tasks

```bash
crontab -e              # Edit your crontab
crontab -l              # List cron jobs
sudo crontab -e         # Edit root's crontab

# Cron syntax:
# ┌─────────── minute (0-59)
# │ ┌───────── hour (0-23)
# │ │ ┌─────── day of month (1-31)
# │ │ │ ┌───── month (1-12)
# │ │ │ │ ┌─── day of week (0-7, 0=Sunday)
# │ │ │ │ │
# * * * * * command

# Examples:
# Run every minute
* * * * * /home/ali/script.sh

# Run every day at 2:30 AM
30 2 * * * /home/ali/backup.sh

# Run every Monday at 9 AM
0 9 * * 1 /home/ali/weekly_report.sh

# Run every hour
0 * * * * /home/ali/check.sh
```

## Log Files

```bash
# Key log locations
/var/log/syslog           # General system log (Ubuntu/Debian)
/var/log/messages         # General system log (RHEL/CentOS)
/var/log/auth.log         # Authentication log
/var/log/kern.log         # Kernel log
/var/log/nginx/           # Nginx logs
/var/log/apache2/         # Apache logs

# Reading logs
tail -f /var/log/syslog                   # Follow live
grep "error" /var/log/syslog              # Search for errors
journalctl -f                              # Follow systemd journal
journalctl --since "2024-01-01" --until "2024-01-02"
```

## System Monitoring

```bash
top                       # CPU and memory usage
htop                      # Better interactive monitor
iotop                     # Disk I/O by process
nethogs                   # Network usage by process
vmstat 1                  # System stats every second
sar -u 1 10               # CPU usage (10 samples, 1s apart)
dmesg                     # Kernel ring buffer (hardware events)
dmesg | tail -20          # Recent kernel messages
```

---

➡️ Next: [10 — Advanced Topics](../10-advanced-topics/README.md)
