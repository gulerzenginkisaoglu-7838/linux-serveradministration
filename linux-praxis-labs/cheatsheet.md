# Linux-Spickzettel

| Thema | Befehle |
|-------|---------|
| Navigation | `pwd` · `ls -la` · `cd ~` · `cd ..` |
| Dateien | `mkdir -p` · `touch` · `cp -r` · `mv` · `rm -r` |
| Anzeigen | `cat` · `less` · `head` · `tail -f` · `wc -l` |
| Suchen | `find / -name "*.conf" 2>/dev/null` · `grep -ri "text" ordner/` |
| Rechte | `chmod 750 datei` · `chmod u+x datei` · `chown user:gruppe datei` |
| Archive | `tar -czf a.tar.gz ordner/` · `tar -xzf a.tar.gz` · `tar -tzf a.tar.gz` |
| Pakete | `apt update` · `apt upgrade` · `apt install` · `dpkg -l` |
| Umleitung | `>` überschreiben · `>>` anhängen · `2>/dev/null` · `\|` Pipe |
| Prozesse | `ps aux` · `top` · `kill PID` · `kill -9 PID` |
| Dienste | `systemctl status/start/stop/restart/enable` · `journalctl -u dienst` |
| Benutzer | `whoami` · `id` · `adduser` · `usermod -aG` · `passwd` · `su -` |
| System | `uname -r` · `free -h` · `df -h` · `du -sh` · `uptime` |
| Netzwerk | `ip a` · `ip r` · `ping -c 3` · `ss -tlnp` · `dig` |
| Zeitplan | `crontab -e` → `Min Std Tag Monat Wochentag Befehl` |
