# Module 05 — Networking

## Network Information

```bash
ip addr                # Show IP addresses (modern)
ip addr show eth0      # Show specific interface
ifconfig               # Older alternative
hostname -I            # Show all IPs of this host
ip route               # Show routing table
```

## Testing Connectivity

```bash
ping google.com        # Test connectivity
ping -c 4 8.8.8.8      # Ping 4 times
traceroute google.com  # Trace route to host
mtr google.com         # Combined ping + traceroute
curl https://example.com   # Fetch a URL
wget https://example.com/file.zip  # Download a file
```

## DNS

```bash
nslookup google.com    # DNS lookup
dig google.com         # Detailed DNS lookup
dig google.com MX      # Lookup MX records
host google.com        # Simple DNS lookup
cat /etc/resolv.conf   # DNS server config
```

## Ports & Connections

```bash
ss -tuln               # Show listening ports (modern)
netstat -tuln          # Older alternative
ss -tulnp              # Include process names
lsof -i :80            # What's using port 80
nc -zv host 80         # Test if port is open
```

## SSH

```bash
ssh user@host              # Connect to remote server
ssh -p 2222 user@host      # Custom port
ssh -i ~/.ssh/key user@host  # Use specific key
scp file.txt user@host:/tmp  # Copy file to server
scp user@host:/file.txt .   # Copy file from server
rsync -avz dir/ user@host:/dest/  # Sync directory
```

## Firewall (ufw — Ubuntu/Debian)

```bash
sudo ufw status        # Show firewall status
sudo ufw enable        # Enable firewall
sudo ufw allow 22      # Allow SSH
sudo ufw allow 80/tcp  # Allow HTTP
sudo ufw deny 23       # Deny telnet
sudo ufw delete allow 80  # Remove rule
```

---

➡️ Next: [06 — Text Processing](../06-text-processing/README.md)
