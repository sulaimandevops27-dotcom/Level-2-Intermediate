# Level 2 – Intermediate DevOps Tasks

This level focuses on **daily DevOps tasks** that are commonly required in production environments.  
By completing these tasks, you will learn to automate routine work, manage logs, and monitor system health.

---

# ✅ Task 1: Automate Backups with Cron

This guide explains how to **automate backups using Cron** on Linux.  
Automating backups ensures your important files and directories are saved regularly without manual intervention.

---

## ✅ Step 1: Understand Cron

**Explanation:**  
Cron is a Linux utility that allows you to **schedule commands or scripts** to run automatically at specified times (daily, weekly, monthly, etc.).  
Each scheduled task is called a **cron job**.

**Example:**  
```bash
# View current cron jobs for your user
crontab -l
```

---

## ✅ Step 2: Create a Backup Script

**Explanation:**  
It’s best practice to create a shell script for backups. This allows you to **reuse and modify it easily**.

**Example:**  
```bash
#!/bin/bash
# backup.sh - Backup /home/devuser to /backup directory

# Create backup directory if it doesn't exist
mkdir -p /backup

# Create a compressed backup file with date
tar -czf /backup/home-backup-$(date +%F).tar.gz /home/devuser
```

> Save this file as `backup.sh` in a directory like `/usr/local/bin
