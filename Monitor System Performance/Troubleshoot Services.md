# ✅ Monitor System Performance and Troubleshoot Services

This guide explains how to **check system health and troubleshoot services**.  
Monitoring helps **identify performance issues and fix problems before they affect users**.

---

## ✅ Step 1: Check CPU, Memory, and Disk Usage

**Explanation:**  
Use these commands to see overall system performance.

```bash
# Show CPU and memory usage
top
free -h

# Check disk usage
df -h
```

---

## ✅ Step 2: Check Running Services

**Explanation:**  
Verify that critical services like Nginx or Apache are running.

```bash
# Check Nginx status
systemctl status nginx
```

---

## ✅ Step 3: View Service Logs

**Explanation:**  
Use `journalctl` to see detailed logs for troubleshooting.

```bash
# Show last 50 logs for Nginx
journalctl -u nginx -n 50
```

---

## ✅ Step 4: Monitor Processes

**Explanation:**  
Identify processes consuming high CPU or memory.

```bash
# Show top 5 processes by CPU usage
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
```

---

## 🎉 System Monitoring Complete!

- You can now **monitor resources, check services, and troubleshoot issues** like a DevOps professional.
