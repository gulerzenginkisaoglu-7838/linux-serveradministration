# 06 – Fehlersuche: Dienste, Netzwerk, Logs

> 🇬🇧 **In short:** Systematic troubleshooting of broken services and network problems, and log analysis.

## Mein Vorgehen

1. **Symptom** genau beschreiben: Was geht nicht?
2. **Status** prüfen: Läuft der Dienst? Gibt es eine IP?
3. **Logs** lesen: Was sagt das System?
4. **Eine** Änderung machen, dann wieder testen.
5. **Dokumentieren**, was die Ursache war.

## Dienste

| Befehl | Wofür |
|--------|-------|
| `systemctl status dienst` | Läuft er? Letzte Fehlermeldung |
| `journalctl -u dienst -e` | Ausführliche Logs, ans Ende springen |
| `ss -tlnp` | Welche Programme hören auf welchem Port? |
| `nginx -t`, `sshd -t` | Konfigurationsdatei auf Fehler prüfen |

## Netzwerk – von unten nach oben

| Schritt | Befehl | Frage |
|---------|--------|-------|
| 1 | `ip a` | Hat die Karte eine IP? |
| 2 | `ip r` | Gibt es ein Standard-Gateway? |
| 3 | `ping -c 3 <gateway>` | Erreiche ich das Gateway? |
| 4 | `ping -c 3 9.9.9.9` | Komme ich ins Internet? |
| 5 | `cat /etc/resolv.conf`, `dig debian.org` | Funktioniert DNS? |

Geht Schritt 4, aber Schritt 5 nicht → **DNS-Problem**.

## Logs auswerten

```bash
journalctl --since "1 hour ago" -p err      # Fehler der letzten Stunde
grep -i "failed" /var/log/auth.log | wc -l   # Anzahl Fehlversuche
```

Mein Beispiel: [`scripts/ssh-fehlversuche.sh`](../scripts/ssh-fehlversuche.sh)

## Was ich gelernt habe

- Nicht raten, sondern systematisch von unten nach oben prüfen.
- Die Konfiguration vor dem Neustart eines Dienstes testen (`-t`).
- Logs erzählen eine Geschichte: Zeitstempel und Reihenfolge beachten.
