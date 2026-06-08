# Module 04 — Processes & Job Control

## Viewing Processes

```bash
ps                     # Processes in current terminal
ps aux                 # All processes (BSD style)
ps aux | grep nginx    # Find specific process
top                    # Live process monitor
htop                   # Better live monitor (install first)
pgrep nginx            # Get PID of process by name
```

## Managing Processes

```bash
kill 1234              # Terminate process by PID
kill -9 1234           # Force kill (SIGKILL)
killall nginx          # Kill all processes named nginx
pkill -f "python app"  # Kill by name pattern
```

## Job Control (Background & Foreground)

```bash
command &              # Run in background
Ctrl + Z               # Suspend current job
bg                     # Resume suspended job in background
fg                     # Bring background job to foreground
jobs                   # List all background jobs
fg %2                  # Bring job #2 to foreground
```

## Process Priority

```bash
nice -n 10 command     # Start with lower priority (10)
renice 5 -p 1234       # Change priority of running process
```

## Monitoring System Resources

```bash
free -h                # RAM usage
vmstat                 # Virtual memory stats
iostat                 # Disk I/O stats
lsof                   # List open files
lsof -p 1234           # Files opened by PID 1234
lsof -i :80            # Process using port 80
```

---

➡️ Next: [05 — Networking](../05-networking/README.md)
