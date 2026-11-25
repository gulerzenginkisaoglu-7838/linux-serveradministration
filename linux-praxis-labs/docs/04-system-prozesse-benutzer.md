# 04 – System, Prozesse und Benutzer

> 🇬🇧 **In short:** Processes, services, users and groups, kernel and system information.

## Prozesse

| Befehl | Bedeutung |
|--------|-----------|
| `ps aux` | Alle Prozesse |
| `top` / `htop` | Live-Ansicht (CPU, RAM) |
| `pgrep name` | PID eines Prozesses finden |
| `kill PID` | Prozess beenden (Signal 15, sauber) |
| `kill -9 PID` | Prozess erzwingen (Signal 9, letzter Ausweg) |
| `befehl &` / `jobs` / `fg` | Im Hintergrund starten / anzeigen / nach vorne holen |

## Dienste (systemd)

| Befehl | Bedeutung |
|--------|-----------|
| `systemctl status ssh` | Läuft der Dienst? |
| `systemctl start` / `stop` / `restart ssh` | Starten / stoppen / neu starten |
| `systemctl enable ssh` | Beim Booten automatisch starten |
| `journalctl -u ssh -n 50` | Letzte 50 Log-Zeilen des Dienstes |

## Benutzer und Gruppen

| Befehl | Bedeutung |
|--------|-----------|
| `whoami`, `id` | Wer bin ich, welche Gruppen? |
| `adduser name` | Benutzer anlegen (Debian, interaktiv) |
| `usermod -aG gruppe name` | Benutzer zu Gruppe hinzufügen |
| `passwd name` | Passwort setzen |
| `su -` | root werden |
| `/etc/passwd`, `/etc/group` | Benutzer- und Gruppenliste |

`$` in der Eingabeaufforderung = normaler Benutzer, `#` = root.

## System

| Befehl | Zeigt |
|--------|-------|
| `uname -r` | Laufender Kernel |
| `cat /etc/debian_version` | Debian-Version |
| `free -h` | Arbeitsspeicher |
| `df -h` | Speicherplatz |
| `du -sh ordner` | Größe eines Ordners |
| `uptime` | Laufzeit und Last |
| `ip a` | IP-Adressen |

## Was ich gelernt habe

- Erst `kill`, nur wenn nötig `kill -9`. Sonst kann der Prozess nicht aufräumen.
- Ein neuer Kernel wird erst nach einem Neustart aktiv (`uname -r` prüfen).
- `usermod -aG`: ohne `-a` werden alle anderen Gruppen entfernt.
