#!/bin/bash

# ============================================================
# SkyLearn Backup Utility
# Author  : Adithyan Suresh Kumar
# Project : SkyLearn DevOps Platform
# Purpose : Create compressed backups of the SkyLearn directory
# ============================================================

########################
# Configuration
########################

SOURCE_DIR="/opt/skylearn"
BACKUP_DIR="/opt/skylearn/backups"
LOG_FILE="/opt/skylearn/logs/backup.log"
RETENTION_DAYS=7
S3_BUCKET="skylearn-backups-adithyan-902734532014-ap-south-1-an"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="skylearn_backup_${TIMESTAMP}.tar.gz"

########################
# Colours
########################

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
RESET="\e[0m"

########################
# Logging Function
########################

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') : $1" | tee -a "$LOG_FILE"
}

########################
# Banner
########################

banner() {
    echo -e "${BLUE}"
    echo "=========================================="
    echo "        SkyLearn Backup Utility"
    echo "=========================================="
    echo -e "${RESET}"
}

########################
# Create Backup
########################

create_backup() {

    mkdir -p "$BACKUP_DIR"

    if tar \
        --exclude="$BACKUP_DIR" \
        -czf "$BACKUP_DIR/$BACKUP_NAME" \
        "$SOURCE_DIR"; then

        echo -e "${GREEN}Backup created successfully.${RESET}"
        log "SUCCESS : $BACKUP_NAME"

    else

        echo -e "${RED}Backup failed.${RESET}"
        log "FAILED : $BACKUP_NAME"
        exit 1

    fi
}

########################
# Upload Backup to S3
########################

upload_to_s3() {

    echo
    echo "Uploading backup to S3..."

    if aws s3 cp "$BACKUP_DIR/$BACKUP_NAME" "s3://$S3_BUCKET/"; then

        echo -e "${GREEN}Backup uploaded to S3 successfully.${RESET}"
        log "S3 UPLOAD SUCCESS : $BACKUP_NAME"

    else

        echo -e "${RED}Failed to upload backup to S3.${RESET}"
        log "S3 UPLOAD FAILED : $BACKUP_NAME"
        exit 1

    fi

}

########################
# Cleanup Old Backups
########################

cleanup_backups() {

    find "$BACKUP_DIR" \
        -name "*.tar.gz" \
        -mtime +$RETENTION_DAYS \
        -delete

    log "Old backups older than ${RETENTION_DAYS} days removed."

}

########################
# Display Backup Info
########################

backup_summary() {

    echo
    echo "Backup Location : $BACKUP_DIR/$BACKUP_NAME"

    ls -lh "$BACKUP_DIR/$BACKUP_NAME"
    echo
    echo "S3 Bucket : s3://$S3_BUCKET/$BACKUP_NAME"

}

########################
# Main
########################

main() {

    banner

    log "Backup Started"

    create_backup

    upload_to_s3

    cleanup_backups

    backup_summary

    log "Backup Completed"

}

main
