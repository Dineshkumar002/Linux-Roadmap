# Exercises

Practice challenges for each module. Attempt before checking solutions!

## Module 01 — Basics
1. Open a terminal and find out your username, hostname, and current directory.
2. Use `man` to read the manual for the `date` command.
3. Display today's date in the format `YYYY-MM-DD`.

## Module 02 — File System
1. Create a directory `~/linux-practice/` with subdirectories `docs/`, `scripts/`, `logs/`.
2. Create a file `docs/notes.txt` with the text "Learning Linux is fun!".
3. Copy it to `docs/notes_backup.txt`.
4. Find all `.txt` files in your home directory.
5. Check the size of your home directory.

## Module 03 — Permissions
1. Create a file `secret.txt` and set permissions so only you can read and write it.
2. Create a script `hello.sh` that echoes "Hello World", then make it executable and run it.
3. Change the group ownership of a file to a group you belong to.

## Module 04 — Processes
1. Find the PID of your bash shell.
2. Run `sleep 100 &` in the background, then find its PID and kill it.
3. Use `top` to find the process using the most CPU.

## Module 05 — Networking
1. Find your machine's IP address.
2. Ping `8.8.8.8` exactly 3 times.
3. Check which ports are listening on your machine.
4. Use `curl` to fetch the HTTP headers of `https://example.com`.

## Module 06 — Text Processing
1. Create a file with 20 lines. Use `grep` to find lines containing a specific word.
2. Use `sed` to replace a word in a file without editing manually.
3. Given `/etc/passwd`, use `awk` to print only usernames (field 1, delimiter `:`) and sort them.
4. Count how many users have `/bin/bash` as their shell.

## Module 07 — Shell Scripting
1. Write a script that prints "Good morning", "Good afternoon", or "Good evening" based on the current hour.
2. Write a script that takes a filename as argument and reports if it exists, its type, and size.
3. Modify `backup.sh` from the module to keep only the last 5 backups.

## Module 08 — Package Management
1. Update your package list and check if any upgrades are available (don't install yet).
2. Install `tree` and use it to view your `~/linux-practice/` directory.
3. Find what package provides the `dig` command.

## Module 09 — System Administration
1. List all services that are currently running.
2. Find a service that failed and check its logs.
3. Create a cron job that logs the current date to `/tmp/crontest.log` every minute, let it run for 3 minutes, then remove it.

## Module 10 — Advanced Topics
1. Add a custom directory to your PATH permanently.
2. Create a tar.gz backup of `~/linux-practice/` and verify its contents without extracting.
3. Use SSH key authentication to connect to a remote server (or localhost).

---

Solutions are in the `solutions/` subdirectory (try first!).
