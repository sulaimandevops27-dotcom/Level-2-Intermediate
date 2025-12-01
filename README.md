# Level 2 – Intermediate DevOps Tasks

This level focuses on daily DevOps tasks commonly required in production.  
By completing these tasks, you will learn to automate routine work, manage logs, and monitor system health.

---

## ✅ Task 1: Automate Backups with Cron

**Explanation:**  
Cron is a Linux utility that lets you **schedule commands or scripts to run automatically** at specified times. Automating backups ensures your important data is saved without manual intervention.

**Example:**  
```bash
# Backup /home/devuser to /backup every day at 2 AM
crontab -e
# Add the line:
0 2 * * * tar -czf /backup/home-backup-$(date +\%F).tar.gz /home/devuser
```

---

## ✅ Task 2: Create Shell Scripts

**Explanation:**  
Shell scripts allow you to **bundle multiple commands into a single executable file**. This is useful for repetitive tasks like cleaning logs, restarting services, or checking system health.

**Examples:**  
```bash
# Log cleanup script - removes logs older than 7 days
#!/bin/bash
find /var/log -type f -name "*.log" -mtime +7 -exec rm -f {} \;

# Service restart script - restarts Nginx
#!/bin/bash
systemctl restart nginx

# Health check script - checks if Nginx is running and sends alert if down
#!/bin/bash
if ! systemctl is-active --quiet nginx; then
    echo "Nginx is down!" | mail -s "Service Alert" admin@example.com
fi
```

---

## ✅ Task 3: Manage Logs under /var/log

**Explanation:**  
Linux stores system and application logs in `/var/log`. Proper log management is essential for **troubleshooting, auditing, and freeing disk space**.

**Key Commands:**  
```bash
# View the last 50 lines of syslog
tail -n 50 /var/log/syslog

# Search for errors in authentication logs
grep "error" /var/log/auth.log

# Monitor logs in real-time (useful for watching web server activity)
tail -f /var/log/nginx/access.log
```

---

## ✅ Task 4: Monitor System Performance and Troubleshoot Services

**Explanation:**  
Monitoring ensures your system is **healthy and responsive**. You can detect bottlenecks, failing services, or high resource usage, and take corrective actions before issues escalate.

**Commands:**  
```bash
# Check CPU, memory, and disk usage
top
free -h
df -h

# Check running services
systemctl status nginx

# View recent service logs
journalctl -u nginx -n 50
```

---

## 🎉 Level 2 Tasks Overview Complete!

- Follow the tasks step by step.  
- Understand the purpose of each command.  
- Everything is ready to copy-paste into GitHub, beginner-friendly and professional.
