#!/bin/bash

echo "==================== SERVER PERFORMANCE STATS ===================="

# OS Version
echo -e "\n>> OS Version:"
cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"'

# Uptime
echo -e "\n>> Uptime:"
uptime -p

# Load Average
echo -e "\n>> Load Average (1m, 5m, 15m):"
uptime | awk -F'load average: ' '{print $2}'

# Logged In Users
echo -e "\n>> Logged In Users:"
who | wc -l

# Failed login attempts (last 24 hours)
echo -e "\n>> Failed Login Attempts (last 24h):"
journalctl _COMM=sshd --since "24 hours ago" | grep "Failed password" | wc -l

# CPU Usage
echo -e "\n>> Total CPU Usage:"
top -bn1 | grep "Cpu(s)" | \
    awk '{print 100 - $8 "% used (" $1 "% user, " $3 "% system)"}'

# Memory Usage
echo -e "\n>> Memory Usage:"
free -h | awk 'NR==2{printf "Used: %s / %s (%.2f%%)\n", $3, $2, $3*100/$2 }'

# Disk Usage
echo -e "\n>> Disk Usage (Root Filesystem):"
df -h / | awk 'NR==2{printf "Used: %s / %s (%s)\n", $3, $2, $5}'

# Top 5 Processes by CPU Usage
echo -e "\n>> Top 5 Processes by CPU Usage:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

# Top 5 Processes by Memory Usage
echo -e "\n>> Top 5 Processes by Memory Usage:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 6

echo "==================================================================="

