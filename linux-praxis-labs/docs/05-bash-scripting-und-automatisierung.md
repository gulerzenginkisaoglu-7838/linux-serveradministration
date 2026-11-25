# 05 – Bash-Scripting, Automatisierung, Backup & Deploy

> 🇬🇧 **In short:** Bash scripts with if/case/for/functions, cron automation, backups with tar/rsync, deploy and rollback.

## Aufbau eines Skripts

```bash
#!/usr/bin/env bash
set -euo pipefail          # bei Fehlern abbrechen

ZIEL="${1:-/tmp}"           # Parameter 1, sonst Standardwert

if [[ ! -d "$ZIEL" ]]; then
  echo "Ordner fehlt: $ZIEL" >&2
  exit 1
fi

for datei in "$ZIEL"/*.log; do
  echo "Gefunden: $datei"
done
```

Ausführbar machen und starten: `chmod +x skript.sh` → `./skript.sh /var/log`

| Baustein | Beispiel |
|----------|----------|
| Bedingung | `if [[ -f datei ]]; then ... fi` |
| Auswahl | `case "$1" in start) ... ;; stop) ... ;; esac` |
| Schleife | `for i in 1 2 3; do ... done` |
| Funktion | `gruss() { echo "Hallo $1"; }` |
| Rückgabewert | `$?` = 0 heißt Erfolg |

## Automatisierung mit cron

`crontab -e` öffnet die eigene Zeitplanung:

```text
# Min Std Tag Monat Wochentag  Befehl
  0   2   *   *     *          /home/gzk/scripts/backup.sh
```

= jeden Tag um 02:00 Uhr.

## Backup & Deploy

| Befehl | Zweck |
|--------|-------|
| `tar -czf backup_$(date +%F).tar.gz ordner/` | Backup mit Datum im Namen |
| `rsync -av quelle/ ziel/` | Ordner abgleichen, nur Änderungen kopieren |
| `rsync -av --delete quelle/ ziel/` | Ziel exakt wie Quelle (löscht Überflüssiges!) |
| Rollback | Vor dem Deploy sichern, bei Fehler das alte Archiv zurückspielen |

Mein Beispiel: [`scripts/backup.sh`](../scripts/backup.sh)

## Was ich gelernt habe

- Variablen immer in `"..."` setzen, sonst Probleme mit Leerzeichen.
- Ein Backup braucht eine Aufbewahrungsregel, sonst läuft die Festplatte voll.
- Vor jedem Deploy ein Backup – dann ist ein Rollback einfach.
