# ✅ Create Shell Scripts: Log Cleanup, Service Restart, Health Checks

This guide explains how to **create simple shell scripts** to automate common DevOps tasks.  
Shell scripts help you **save time and reduce errors** by automating repetitive commands.

---

## ✅ Step 1: Create a Log Cleanup Script

**Explanation:**  
This script removes old log files (older than 7 days) from `/var/log`.

```bash
#!/bin/bash
# log-cleanup.sh - Remove old logs

find /var/log -type f -name "*.log" -mtime +7 -exec rm -f {} \;
```

> Save this file as `/usr/local/bin/log-cleanup.sh`.

---

## ✅ Step 2: Make the Script Executable

```bash
chmod +x /usr/local/bin/log-cleanup.sh
```

---

## ✅ Step 3: Create a Service Restart Script

**Explanation:**  
This script restarts a service like Nginx automatically.

```bash
#!/bin/bash
# restart-service.sh - Restart Nginx

systemctl restart nginx
```

> Save this file as `/usr/local/bin/restart-service.sh`.

---

## ✅ Step 4: Create a Health Check Script

**Explanation:**  
This script checks if a service is running and sends an alert if it is down.

```bash
#!/bin/bash
# health-check.sh - Check Nginx status

if ! systemctl is-active --quiet nginx; then
    echo "Nginx is down!" | mail -s "Service Alert" admin@example.com
fi
```

> Save this file as `/usr/local/bin/health-check.sh`.

---

## ✅ Step 5: Make All Scripts Executable

```bash
chmod +x /usr/local/bin/log-cleanup.sh
chmod +x /usr/local/bin/restart-service.sh
chmod +x /usr/local/bin/health-check.sh
```

---

## 🎉 Shell Scripts Ready!

- You can now **run scripts manually** or **schedule them with Cron** for automation.  
- These scripts make repetitive tasks easier and safer.
