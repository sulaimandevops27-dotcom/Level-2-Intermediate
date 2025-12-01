# ✅ Automate Backups with Cron

This guide explains how to **automate backups using Cron** on Linux.  
Automating backups ensures your important files are saved regularly without manual work.

---

## ✅ Step 1: Create a Backup Script

**Explanation:**  
We will create a simple script to backup a directory.

```bash
#!/bin/bash
# backup.sh - Backup /home/devuser to /backup

mkdir -p /backup
tar -czf /backup/home-backup-$(date +%F).tar.gz /home/devuser
```

> Save this file as `/usr/local/bin/backup.sh`.

---

## ✅ Step 2: Make the Script Executable

```bash
chmod +x /usr/local/bin/backup.sh
```

---

## ✅ Step 3: Schedule the Script with Cron

**Explanation:**  
Use cron to run the script automatically every day at 2 AM.

```bash
crontab -e
```

Add this line:

```bash
0 2 * * * /usr/local/bin/backup.sh
```

---

## ✅ Step 4: Verify the Cron Job

```bash
crontab -l
```

You should see your backup script scheduled.

---

## 🎉 Backup Automation Complete!

Your system will now **automatically backup files daily**.
