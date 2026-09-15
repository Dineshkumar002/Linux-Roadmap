# Basic Commands in Linux (Data Engineering)

## 1. Basic Commands in Linux

1. **Present working directory:**
   ```bash
   ubuntu@dheen:~$ pwd
   /home/ubuntu
   ```
2. **Version:**
   ```bash
   ubuntu@dheen:~$ uname -a
   ```
3. **Username:**
   ```bash
   ubuntu@dheen:~$ whoami
   ubuntu
   ```
4. **Clearing the screen:**
   ```bash
   ubuntu@dheen:~$ clear
   # Or use shortcut: (ctrl + L)
   ```
5. **Viewing command history:**
   ```bash
   ubuntu@dheen:~$ history
   ```

---

## 2. Creating Directory and Files in Linux

1. **Make directory:**
   ```bash
   ubuntu@dheen:~$ mkdir data
   ```
2. **Entering into a directory:**
   ```bash
   ubuntu@dheen:~$ cd data/
   ```
3. **Creating a text file (using `vi` editor):**
   ```bash
   ubuntu@dheen:~/data$ vi hello
   ```
   * **In the editor:** Press `i` for inserting text.
   * **Saving a file:** Press `Esc`, then type `:wq` to save and quit.
   * **Quit without saving:** Press `Esc`, then type `:q!`
4. **List of files:**
   ```bash
   ubuntu@dheen:~/data$ ls
   hello.txt
   ```
5. **Installing a package (Linux):**
   ```bash
   ubuntu@dheen:~/data$ sudo apt-get install vim
   ```
   * `sudo`: root user privilege.
   * `apt-get`: package manager for applications.
   * `vim`: upgrading the vi editor.
6. **Auto-completing a command:** Press `Tab` to auto-complete a file name.
7. **Nano Text Editor:** Simple and easy to use.
   ```bash
   ubuntu@dheen:~/data$ nano test.txt
   ```
8. **Creating a dummy file (empty file):**
   ```bash
   ubuntu@dheen:~/data$ touch foo.txt
   ```
9. **File manipulation:**
   * **Remove (delete) a file:**
     ```bash
     ubuntu@dheen:~/data$ rm foo.txt
     ```
   * **List specific extension:**
     ```bash
     ubuntu@dheen:~/data$ ls *.txt
     ```
   * **List files starting with 'he':**
     ```bash
     ubuntu@dheen:~/data$ ls he*
     ```
   * **Delete all files in current directory:**
     ```bash
     ubuntu@dheen:~/data$ rm *
     ```

---

## 3. Viewing and Copying a File

1. **Displaying content in command prompt:**
   ```bash
   ubuntu@dheen:~/data$ cat hello.txt
   ```
2. **Copying a file (`cp`):**
   ```bash
   ubuntu@dheen:~/data$ cp hello.txt new-hello.txt
   ```
3. **Renaming a file (`mv`):**
   ```bash
   ubuntu@dheen:~/data$ mv hello.txt demo.txt
   ```
4. **Copying a file with `cat` command (Append `>>`):**
   ```bash
   ubuntu@dheen:~/data$ cat demo.txt >> nfile.txt
   ```
5. **Printing texts in prompt (`echo`):**
   ```bash
   ubuntu@dheen:~/data$ echo "dheen"
   ```
   * **Store in file:** `echo "dheen" >> nfile.txt` (Appends text to the file)

---

## 4. File Navigation System

1. **`ls` and `cd` commands:**
   * Go to home directory shortcut: `cd ~` or just `cd`
2. **Creating nested directories:** Use `-p` to create intermediate directories if they don't exist.
   ```bash
   ubuntu@dheen:~$ mkdir -p abc/test/demo
   ```
3. **Going Back from a directory:**
   ```bash
   ubuntu@dheen:~$ cd ../..
   # Goes to the previous cd command history path:
   ubuntu@dheen:~$ cd - 
   ```

---

## 5. List Functionalities (`ls`)

1. **Basic `ls` command:** `ls`
2. **`ls` options:**

| Option | Description |
| :--- | :--- |
| `-l` | long list format |
| `-s` | shows file size in blocks |
| `-t` | sorts by modification time (newest first) |
| `-r` | reverses the sorting order |
| `-S` | sorts by file size (largest first) |

*Example:* `ls -lstrS`

3. **`ls -a` (shows hidden files):** Shows files starting with a dot `.`.

| Hidden File / Item | Description |
| :--- | :--- |
| `.bash_history` | Bash command history |
| `.profile` | User profile settings |
| `.bashrc` | Bash configuration file |

4. **`.bashrc` file usage:** Used to set environment variables (e.g., Python, Java).
   * **Opening:** `vi ~/.bashrc`
   * **Executing/Applying changes:** `source ~/.bashrc`

5. **List manipulations:**
   * `ls *.py` (matches zero or more characters for files ending in .py)
   * `ls data*` (files starting with 'data')

---

## 6. Hardlink and Softlink

1. **Creating a Hardlink:**
   ```bash
   ln original.txt team2-data.txt
   ```
   * **Hardlink vs Original:** If we update one, it applies to the other. If we delete one, the data still exists through the other link (same inode).
2. **Creating a Softlink (Symbolic link):**
   ```bash
   ln -s original.txt new-data.txt
   ```
   * **Softlink behavior:** Points to the path of the original file. If original file is deleted, the link is broken (different inode).

### Hardlink vs Softlink Summary

| Feature | Hardlink | Softlink |
| :--- | :--- | :--- |
| **Inode** | Same inode | Different inode |
| **Link Count** | Increases | No effect |
| **Size** | Same as original | Shows link size only |
| **Cross Filesystem** | Not possible | Possible |
| **Delete Original** | Data stays | Link broken |

---

## 7. Background Run & Process Monitor

1. **Running Python in background:**
   ```bash
   python3 data.py &
   ```
   *(Note: process stops if terminal is closed)*
2. **`nohup` command:** Allows process to continue running even after logout.
   ```bash
   nohup python3 data.py >> data.py.log &
   ```
3. **Background checker (`top` command):** Displays all running applications in the task manager.
4. **Process status (`ps`):**
   * `ps`: Shows current running processes.
   * `ps -aux`: Shows detailed status of all processes (a = all users, u = user owning process, x = attached to terminal).
5. **Pattern matching with `grep`:**
   ```bash
   ps -aux | grep data-processing.py
   ```
6. **Displaying the file (live updates):**
   ```bash
   tail -f data.py.log
   ```
   * `tail -n 20 data.py.log` (shows last 20 lines once)
7. **Killing a process:** Forcefully kills using PID.
   ```bash
   kill -9 <PID>
   ```

---

## 8. Downloading from Internet & Alias

1. **`wget`:** Downloads a file from the given URL and saves it in the current directory.
   ```bash
   wget "https://..."
   ```
2. **Alias in Linux:** Shortcut for a long command or path.
   * **Temporary alias:** `alias dheen='cd /home/ubuntu/abc'`
   * **Permanent alias:** Add to `~/.bashrc` and run `source ~/.bashrc`.

---

## 9. Data Management (Disk & RAM)

1. **Disk free-space (`df`):** Shows file-system disk space usage.
   ```bash
   df -h  # -h for human readable format
   ```
2. **Particular file usage (`du`):**
   ```bash
   du -sh scripts/  # summary / human-readable size of directory
   ```
3. **RAM usage:**
   ```bash
   free -m  # MB details
   free -g  # GB details
   ```
4. **Free-up cache:** Clears pagecache, dentries, and inodes.
   ```bash
   sudo sh -c "sync; echo 3 > /proc/sys/vm/drop_caches"
   ```

---

## 10. Zip and Unzipping a File

1. **Installing Zip:** `sudo apt-get install zip` (run `sudo apt-get update` if error)
2. **Zipping a file:** Includes all files and subdirectories recursively.
   ```bash
   zip -r file1.zip scripts/
   ```
3. **Unzipping the file:** Extracts the zip archive.
   ```bash
   unzip file1.zip
   ```

---

## 11. TAR - Archiving and Extracting Files

1. **Creating (Archiving) a File (`tar -cvzf`):**
   ```bash
   tar -cvzf sample.tar.gz scripts/
   ```
   * `-c`: Create a new archive
   * `-z`: Compress the archive (gzip)
   * `-v`: Verbose output
   * `-f`: Use archive file name
2. **Extracting (Untarring) a File (`tar -zxvf`):**
   ```bash
   tar -zxvf sample.tar.gz
   ```
   * `-x`: Extract files from archive
3. **Deleting Directories permanently:**
   ```bash
   rm -rf scripts/
   ```
   * `-r`: recursive, `-f`: force

---

## 12. Word Count (`wc`)

Counts words, characters, and lines in a file.

| Command | What it does |
| :--- | :--- |
| `wc file.txt` | Prints number of lines, words, and characters (in order). |
| `wc -w file.txt` | Counts number of **words**. |
| `wc -l file.txt` | Counts number of **lines**. |
| `wc -c file.txt` | Counts number of **characters**. |

---

## 13. Sorting & Head/Tail Commands

1. **Sorting (`sort`):**
   * `sort file.txt`: Sorts alphabetically.
   * `sort -n file.txt`: Sorts numerically (ascending order).
2. **Head & Tail:**
   * `head file.txt`: Shows first 10 lines (default).
   * `tail file.txt`: Shows last 10 lines (default).
   * `head -n 5 file.txt`: Shows first 5 lines.
   * `tail -n 5 file.txt`: Shows last 5 lines.

---

## 14. Pattern Matching (`grep`)

Searches for the given pattern in files and prints matching lines (case sensitive by default).

1. **Common `grep` Options:**
   * `grep ERROR log.txt`: Searches for "ERROR".
   * `grep -i "error" log.txt`: Case insensitive search.
   * `grep -v ERROR log.txt`: Invert match (shows lines that do NOT match).
   * `grep WARNING *.txt`: Matches in any text file (wildcard).
   * `grep -r "Timeout" /logs`: Recursive search in directories.
   * `grep "^[ERROR]" log.txt`: Matches the beginning of the line.

---

## 15. Secure Shell (SSH) & Secure Copy (SCP)

1. **SSH (Secure Shell):** Connect from one server to another (Port 22 by default).
   ```bash
   sudo apt-get install openssh-server
   ssh ubuntu@192.20.124.118
   # or
   ssh ubuntu@hostname
   ```
2. **SCP (Secure Copy):** Copy files between servers over SSH.
   * **Copy file to remote:** `scp file.txt user@ip:/path`
   * **Copy directory to remote:** `scp -r dir/ user@ip:/path`
   * **Copy from remote to local:** `scp user@ip:/path/file.txt ./`

---

## 16. Find Command

Locates files by name, size, type, or time.

1. **Common `find` Options:**
   * `find . -name log1.txt`: Finds file by exact name.
   * `find . -name "*.txt"`: Finds files ending in `.txt`.
   * `find . -type f -size +10M`: Finds files (`f`) strictly larger than 10MB.
   * `find . -mtime -1`: Finds files modified within 1 day.
   * `find . -empty`: Finds empty files.
   * `find . -name "*.tmp" -delete`: Finds and deletes `.tmp` files.

*Note: `find` is for filesystem level search, whereas `grep` is for file content level search.*

---

## 17. AWK (Text Processing Tool)

Extracts and formats data from files (columns are separated by space/tab by default).

1. **Printing columns:**
   ```bash
   awk '{print $0}' data.txt      # Prints entire line
   awk '{print $1}' data.txt      # Prints 1st column
   awk '{print $1, $3}' data.txt  # Prints 1st and 3rd column
   ```
2. **Conditional printing:**
   ```bash
   awk '$2 > 27 {print $1, $3}' data.txt
   ```
3. **Formatted output (`printf`):**
   ```bash
   awk '{printf "Name: %s | Role: %s\n", $1, $3}' data.txt
   ```
4. **AWK Variables:**
   * `$0`: Entire line
   * `$1, $2, ...`: Fields/columns
   * `NF`: Number of fields (columns)
   * `NR`: Current line number
5. **Other Options:** `-F ','` (sets delimiter), `BEGIN {}`, `END {}`.

---

## 18. Change Mode (`chmod`)

Changes the read, write, and execute permissions of a file or directory.

**Permissions:** Read (`r` = 4), Write (`w` = 2), Execute (`x` = 1), No permission (`-` = 0).
**Format:** User | Group | Others

1. **Numeric Notation Examples:**
   * `7` = `4 + 2 + 1` = `rwx` (read, write, execute)
   * `6` = `4 + 2 + 0` = `rw-` (read, write)
   * `5` = `4 + 0 + 1` = `r-x` (read, execute)
2. **Common usages:**
   ```bash
   chmod 777 file.sh     # Full access to everyone (rwxrwxrwx)
   chmod 755 file.sh     # Full access to user, read/execute for group/others (rwxr-xr-x)
   chmod 644 file.txt    # Read/write for user, read only for group/others (rw-r--r--)
   ```
3. **Recursive permission:** Applies to a directory and all subcontents.
   ```bash
   chmod -R 755 dir/
   ```

-----

# Completed
