#!/usr/bin/env bash
# Zählt fehlgeschlagene SSH-Anmeldungen pro IP-Adresse (Top 10).
# Muss als root laufen, weil Logs geschützt sind.
set -eu

if [[ $EUID -ne 0 ]]; then
  echo "Bitte als root ausführen (su -)." >&2
  exit 1
fi

# Debian 13 nutzt standardmäßig journald; ältere Systeme /var/log/auth.log
if [[ -f /var/log/auth.log ]]; then
  LOGS="$(cat /var/log/auth.log)"
else
  LOGS="$(journalctl -u ssh --no-pager 2>/dev/null || true)"
fi

TREFFER="$(echo "$LOGS" | grep "Failed password" || true)"

if [[ -z "$TREFFER" ]]; then
  echo "Keine fehlgeschlagenen SSH-Anmeldungen gefunden."
  exit 0
fi

echo "Anzahl  IP-Adresse"
echo "$TREFFER" \
  | grep -oE 'from ([0-9]{1,3}\.){3}[0-9]{1,3}' \
  | awk '{print $2}' \
  | sort | uniq -c | sort -rn | head -n 10
