# checking process using a particular port

1. lsof -i :3000 - Shows detailed info about what's using port 3000
2. lsof -ti:3000 - Shows just the PID(s) using port 3000
3. netstat -tulpn | grep :3000 - Alternative method (Linux)
4. ps aux | grep 58342 - Get more info about the specific process
