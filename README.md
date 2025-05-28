# Server Performance Stats

This project contains a shell script `server-stats.sh` that analyzes basic server performance metrics on any Linux machine.

## 🔧 Features

- Total CPU usage
- Total memory usage (free, used, %)
- Total disk usage (free, used, %)
- Top 5 processes by CPU usage
- Top 5 processes by memory usage
- OS version, uptime, load average
- Logged in users and failed login attempts

## 🚀 How to Run

```bash
git clone https://github.com/YOUR_USERNAME/server-performance-stats.git
cd server-performance-stats
chmod +x server-stats.sh
./server-stats.sh

## 📄 Example Output

>> OS Version:
Ubuntu 22.04.4 LTS

>> Uptime:
up 2 hours, 5 minutes

>> Load Average (1m, 5m, 15m):
0.25, 0.30, 0.35

>> Logged In Users:
2

>> Failed Login Attempts (last 24h):
3

>> Total CPU Usage:
7.2% used (5.6% user, 1.6% system)

>> Memory Usage:
Used: 1.5G / 4.0G (37.50%)

>> Disk Usage (Root Filesystem):
Used: 12G / 30G (40%)

>> Top 5 Processes by CPU Usage:
  PID COMMAND         %CPU
 1234 firefox         15.0
 5678 chrome          10.5

>> Top 5 Processes by Memory Usage:
  PID COMMAND         %MEM
 1234 firefox         12.3
 5678 chrome          10.2
📢 Contributions Welcome!

Submit pull requests or open issues to improve the script.

📎 Project URL

👉 https://github.com/muiz2353673/server-performance-stats


---

### ✅ What to Do Next:

1. Save this content in a file called `README.md`
2. Commit and push it to your GitHub repo:

```bash
git add README.md
git commit -m "Add project README"
git push origin main
Let me know if you'd like help creating a GitHub release, adding a license file, or setting up GitHub Pages for this project.
