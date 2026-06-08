#!/bin/bash
# Example backup script

SOURCE="${1:-$HOME/documents}"
DEST="${2:-/tmp/backups}"
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_NAME="backup_$DATE.tar.gz"

echo "=== Backup Script ==="
echo "Source:  $SOURCE"
echo "Dest:    $DEST"
echo ""

if [ ! -d "$SOURCE" ]; then
    echo "ERROR: Source directory '$SOURCE' not found!"
    exit 1
fi

mkdir -p "$DEST"
tar -czf "$DEST/$BACKUP_NAME" "$SOURCE" 2>/dev/null

if [ $? -eq 0 ]; then
    SIZE=$(du -sh "$DEST/$BACKUP_NAME" | cut -f1)
    echo "✓ Backup successful: $DEST/$BACKUP_NAME ($SIZE)"
else
    echo "✗ Backup FAILED!"
    exit 1
fi
