# ✅ Manage Logs under /var/log

This guide explains how to **view, search, and manage logs** on Linux.  
Logs help you **troubleshoot issues, monitor activity, and keep your system healthy**.

---

## ✅ Step 1: View Recent Logs

**Explanation:**  
Use `tail` to see the last few lines of a log file.  

```bash
# View last 50 lines of syslog
tail -n 50 /var/log/syslog
```

---

## ✅ Step 2: Search for Errors in Logs

**Explanation:**  
Use `grep` to find specific keywords, like errors or warnings.  

```bash
# Search for "error" in authentication log
grep "error" /var/log/auth.log
```

---

## ✅ Step 3: Monitor Logs in Real-Time

**Explanation:**  
Use `tail -f` to watch logs live, useful for monitoring services.  

```bash
# Watch Nginx access log in real-time
tail -f /var/log/nginx/access.log
```

---

## ✅ Step 4: Archive or Cleanup Old Logs

**Explanation:**  
Compress or remove old logs to save disk space.  

```bash
# Compress old logs
tar -czf /backup/logs-$(date +%F).tar.gz /var/log/*.log

# Remove logs older than 30 days
find /var/log -type f -name "*.log" -mtime +30 -exec rm -f {} \;
```

---

## 🎉 Log Management Complete!

- You can now **view, search, monitor, and clean logs** efficiently.
