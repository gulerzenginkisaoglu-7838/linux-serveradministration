#!/usr/bin/env bash
# Zeigt die wichtigsten Systeminformationen auf einen Blick.

echo "=== Systeminfo: $(hostname) ==="
echo "Datum:      $(date '+%d.%m.%Y %H:%M')"
echo "Kernel:     $(uname -r)"
echo "Debian:     $(cat /etc/debian_version 2>/dev/null || echo unbekannt)"
echo "Laufzeit:   $(uptime -p)"
echo "IP-Adresse: $(hostname -I | awk '{print $1}')"
echo
echo "--- Arbeitsspeicher ---"
free -h
echo
echo "--- Festplatte (/) ---"
df -h /
echo
echo "--- Top 5 Prozesse nach CPU ---"
ps aux --sort=-%cpu | head -n 6
