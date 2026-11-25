# 01 – Dateien, Ordner, Anschauen & Suchen

> 🇬🇧 **In short:** Creating, copying, moving and deleting files; viewing and finding files.

## Wichtige Befehle

| Befehl | Bedeutung | Beispiel |
|--------|-----------|----------|
| `pwd` | Wo bin ich? | `pwd` |
| `ls -la` | Inhalt anzeigen, auch versteckte Dateien | `ls -la /etc` |
| `cd` | Ordner wechseln | `cd ~/projekte` |
| `mkdir -p` | Ordner (mit Unterordnern) anlegen | `mkdir -p test/a/b` |
| `touch` | Leere Datei anlegen | `touch notiz.txt` |
| `cp` / `cp -r` | Kopieren (Ordner mit `-r`) | `cp a.txt b.txt` |
| `mv` | Verschieben oder umbenennen | `mv alt.txt neu.txt` |
| `rm` / `rm -r` | Löschen – ohne Papierkorb! | `rm alt.txt` |
| `cat`, `less` | Datei anzeigen | `less /etc/passwd` |
| `head`, `tail -f` | Anfang / Ende, live mitlesen | `tail -f /var/log/syslog` |
| `find` | Dateien suchen | `find / -name "*.conf" 2>/dev/null` |
| `wc -l` | Zeilen zählen | `wc -l datei.txt` |

## Absolute und relative Pfade

- **Absolut** beginnt mit `/`: `/home/gzk/meins/hallo.txt`
- **Relativ** geht vom aktuellen Ordner aus: `meins/hallo.txt`
- `~` = Home-Ordner, `.` = aktueller Ordner, `..` = Ordner darüber

## Was ich gelernt habe

- `rm` löscht sofort und endgültig. Vorher mit `ls` prüfen.
- `find` mit `2>/dev/null` blendet „Keine Berechtigung"-Meldungen aus.
- `mv` ist auch der Befehl zum Umbenennen.
