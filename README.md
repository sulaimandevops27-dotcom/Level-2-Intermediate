# Level 2 – Intermediate DevOps Tasks

This level focuses on daily DevOps tasks that are commonly required in production environments. By completing these tasks, you will learn to automate routine work, manage logs, and monitor system health.

---

## ✅ Task 1: Automate Backups with Cron

Cron is a Linux utility used to schedule repetitive tasks automatically.

```bash
# Example: Backup /home/devuser to /backup every day at 2 AM
crontab -e
# Add the line:
0 2 * * * tar -czf /backup/home-backup-$(date +\%F).tar.gz /home/devuser
```

---

## ✅ Task 2: Create Shell Scripts

Shell scripts allow you to automate sequences of commands. Examples:

```bash
# Log cleanup script
#!/bin/bash
find /var/log -type f -name "*.log" -mtime +7 -exec rm -f {} \;

# Service restart script
#!/bin/bash
systemctl restart nginx

# Health check script
#!/bin/bash
if ! systemctl is-active --quiet nginx; then
    echo "Nginx is down!" | mail -s "Service Alert" admin@example.com
fi
```

---

## ✅ Task 3: Manage Logs under /var/log

Linux stores system and application logs in `/var/log`. Key commands:

```bash
# View the last 50 lines of syslog
tail -n 50 /var/log/syslog

# Search for errors in auth.log
grep "error" /var/log/auth.log

# Monitor log in real-time
tail -f /var/log/nginx/access.log
```

---

## ✅ Task 4: Monitor System Performance and Troubleshoot Services

Monitor system health and troubleshoot issues:

```bash
# Check CPU, memory, and disk usage
top
free -h
df -h

# Check running services
systemctl status nginx

# View service logs
journalctl -u nginx -n 50
```

---

## 🎉 Level 2 Tasks Overview Complete!

- Start with Task 1 and proceed step by step.  
- Use the commands/scripts above to practice daily DevOps tasks.  
- Everything is ready to copy-paste into GitHub.
