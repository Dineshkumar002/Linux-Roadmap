# Module 07 — Shell Scripting

## Your First Script

```bash
#!/bin/bash
# This is a comment
echo "Hello, World!"
```

Save as `hello.sh`, then:
```bash
chmod +x hello.sh
./hello.sh
```

---

## Variables

```bash
#!/bin/bash
name="Ali"                    # No spaces around =
age=25
echo "Name: $name, Age: $age"
echo "Name: ${name}!"        # Curly braces for clarity

# User input
read -p "Enter your name: " username
echo "Hello, $username!"

# Command substitution
current_date=$(date +%Y-%m-%d)
file_count=$(ls | wc -l)
echo "Today: $current_date, Files: $file_count"
```

## Conditionals

```bash
#!/bin/bash
x=10

if [ $x -gt 5 ]; then
    echo "x is greater than 5"
elif [ $x -eq 5 ]; then
    echo "x equals 5"
else
    echo "x is less than 5"
fi

# String comparison
name="Ali"
if [ "$name" = "Ali" ]; then
    echo "Hello Ali!"
fi

# File tests
if [ -f "/etc/passwd" ]; then
    echo "File exists"
fi

if [ -d "/home" ]; then
    echo "Directory exists"
fi
```

## Comparison Operators

| Numeric | Meaning | String | Meaning |
|---------|---------|--------|---------|
| `-eq` | equal | `=` | equal |
| `-ne` | not equal | `!=` | not equal |
| `-gt` | greater than | `-z` | is empty |
| `-lt` | less than | `-n` | is not empty |
| `-ge` | greater or equal | | |
| `-le` | less or equal | | |

## Loops

```bash
#!/bin/bash

# for loop
for i in 1 2 3 4 5; do
    echo "Number: $i"
done

# for range
for i in {1..10}; do
    echo "Count: $i"
done

# for loop over files
for file in *.txt; do
    echo "Processing: $file"
done

# while loop
counter=0
while [ $counter -lt 5 ]; do
    echo "Counter: $counter"
    ((counter++))
done
```

## Functions

```bash
#!/bin/bash

greet() {
    local name=$1    # $1 = first argument
    echo "Hello, $name!"
}

add() {
    local result=$(($1 + $2))
    echo $result
}

greet "Ali"
sum=$(add 5 3)
echo "Sum: $sum"
```

## Example Script — Backup

```bash
#!/bin/bash
# Simple backup script

SOURCE="/home/ali/documents"
DEST="/backup"
DATE=$(date +%Y%m%d)
BACKUP_NAME="backup_$DATE.tar.gz"

echo "Starting backup..."

if [ ! -d "$SOURCE" ]; then
    echo "ERROR: Source directory not found!"
    exit 1
fi

mkdir -p "$DEST"
tar -czf "$DEST/$BACKUP_NAME" "$SOURCE"

if [ $? -eq 0 ]; then
    echo "Backup successful: $DEST/$BACKUP_NAME"
else
    echo "Backup FAILED!"
    exit 1
fi
```

---

➡️ Next: [08 — Package Management](../08-package-management/README.md)
