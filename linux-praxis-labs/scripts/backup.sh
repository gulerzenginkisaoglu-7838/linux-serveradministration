#!/usr/bin/env bash
# Sichert einen Ordner als .tar.gz mit Datum und behält nur die letzten N Backups.
# Aufruf: ./backup.sh [quellordner] [zielordner] [anzahl]
# Beispiel: ./backup.sh ~/projekte ~/backups 3
set -euo pipefail

QUELLE="${1:-$HOME/projekte}"
ZIEL="${2:-$HOME/backups}"
BEHALTEN="${3:-3}"

if [[ ! -d "$QUELLE" ]]; then
  echo "Fehler: Ordner $QUELLE existiert nicht." >&2
  exit 1
fi

mkdir -p "$ZIEL"
NAME="$(basename "$QUELLE")"
DATEI="$ZIEL/backup_${NAME}_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"

tar -czf "$DATEI" -C "$(dirname "$QUELLE")" "$NAME"
echo "Backup erstellt: $DATEI ($(du -h "$DATEI" | cut -f1))"

# Alte Backups löschen: nur die neuesten $BEHALTEN bleiben
ls -1t "$ZIEL"/backup_"${NAME}"_*.tar.gz | tail -n +"$((BEHALTEN + 1))" | while read -r alt; do
  rm -- "$alt"
  echo "Altes Backup gelöscht: $alt"
done
