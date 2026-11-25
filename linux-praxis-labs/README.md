# Linux-Praxis-Labs – Debian-Administration auf der Kommandozeile

> Stand: 23.11.2026 · ✅ 13 von 13 Übungsbereichen abgeschlossen · Teil meiner Umschulung zur Fachinformatikerin für Systemintegration

## 🇩🇪 Projektbeschreibung

Im Kurs **Linux Essentials** habe ich auf Debian-13-Servern per SSH praktisch gearbeitet: Dateien und Rechte verwalten, Shell und Pipes nutzen, Archive und Pakete, Prozesse und Benutzer, Bash-Skripte schreiben, kaputte Dienste reparieren, Netzwerkfehler finden und Logdateien auswerten.

Dieser Ordner enthält **meine eigenen Notizen, Befehlsübersichten und Beispielskripte** zu diesen Themen.

## 🇬🇧 In short

Hands-on Linux practice on Debian 13 servers via SSH: files and permissions, shell and pipes, archives and packages, processes and users, Bash scripting, fixing broken services, network troubleshooting and log analysis. This folder contains my own notes, command overviews and example scripts.

## 📋 Übungsbereiche

| Bereich | Themen | Status | Doku |
|---------|--------|--------|------|
| Einstieg | Ordner, Dateien, Anschauen & Suchen | ✅ | [01](docs/01-dateien-und-suchen.md) |
| Essentials | Rechte, Archive (`tar`, `gzip`, `zip`), Pakete (`apt`, `dpkg`) | ✅ | [02](docs/02-rechte-archive-pakete.md) |
| Essentials | Shell, Pipes, Umleitung, Variablen, Links, Regex mit `grep` | ✅ | [03](docs/03-shell-und-regex.md) |
| Essentials | Prozesse, Benutzer, Kernel, Systeminfos | ✅ | [04](docs/04-system-prozesse-benutzer.md) |
| Kür | Bash-Scripting, Automatisierung, Backup & Deploy | ✅ | [05](docs/05-bash-scripting-und-automatisierung.md) |
| Security & Admin | Dienste reparieren, Netzwerkfehler, Log-Forensik | ✅ | [06](docs/06-fehlersuche.md) |

## 🛠️ Meine Beispielskripte

| Skript | Was es macht |
|--------|--------------|
| [`backup.sh`](scripts/backup.sh) | Sichert einen Ordner als `.tar.gz` mit Datum und behält nur die letzten N Backups |
| [`systeminfo.sh`](scripts/systeminfo.sh) | Zeigt Kernel, Debian-Version, IP, RAM, Festplatte und Top-Prozesse |
| [`ssh-fehlversuche.sh`](scripts/ssh-fehlversuche.sh) | Wertet fehlgeschlagene SSH-Anmeldungen nach IP-Adresse aus |

## 📄 Spickzettel

Die wichtigsten Befehle auf einer Seite: [cheatsheet.md](cheatsheet.md)

## 🔗 Verwandte Projekte

- [proxmox-homelab](https://github.com/gulerzenginkisaoglu-7838/proxmox-homelab) – Virtualisierung mit Proxmox VE (Debian-basiert)
