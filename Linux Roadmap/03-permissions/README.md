# Module 03 — Permissions & Ownership

## Understanding Permissions

Every file and directory has permissions for three groups:
- **Owner (u)** — the user who owns the file
- **Group (g)** — members of the file's group
- **Others (o)** — everyone else

Each group has three permission bits:
- **r** (read) = 4
- **w** (write) = 2
- **x** (execute) = 1

```
-rwxr-xr--  1  ali  staff  1234  Jun 1  script.sh
 ^^^         |   |     |
 |           |   |   group
rwx = owner  | owner
r-x = group
r-- = others
```

---

## chmod — Change Permissions

```bash
# Symbolic method
chmod u+x script.sh      # Add execute for owner
chmod g-w file.txt       # Remove write for group
chmod o=r file.txt       # Set others to read only
chmod a+x script.sh      # Add execute for all (a = all)

# Numeric method
chmod 755 script.sh      # rwxr-xr-x (common for scripts)
chmod 644 file.txt       # rw-r--r-- (common for files)
chmod 600 private.key    # rw------- (private files)
chmod 777 file.txt       # rwxrwxrwx (avoid — insecure)
```

## Common Permission Patterns

| Permission | Numeric | Use Case |
|------------|---------|----------|
| `rwxr-xr-x` | 755 | Executable scripts, directories |
| `rw-r--r--` | 644 | Regular files |
| `rw-------` | 600 | Private files (SSH keys, configs) |
| `rwxrwxrwx` | 777 | Avoid — grants everything to everyone |

---

## chown — Change Ownership

```bash
chown ali file.txt          # Change owner to ali
chown ali:staff file.txt    # Change owner and group
chown -R ali:staff mydir/   # Recursively change ownership
```

## chgrp — Change Group

```bash
chgrp developers file.txt   # Change group to developers
```

---

## sudo — Run as Root

```bash
sudo command            # Run command as root
sudo -i                 # Open root shell
sudo su - username      # Switch to another user
```

## Special Permissions

```bash
chmod u+s script.sh     # Setuid — runs as owner
chmod g+s dir/          # Setgid — new files inherit group
chmod +t /tmp           # Sticky bit — only owner can delete
```

---

➡️ Next: [04 — Processes](../04-processes/README.md)
