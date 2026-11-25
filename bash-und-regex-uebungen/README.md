# Bash- und Regex-Übungen

Eigene Lösungen aus den Linux-Übungslaboren der Umschulung zur Fachinformatikerin für Systemintegration (GFN, Oktober 2026).
Hier steht nur meine eigene Arbeit: die Skripte und Befehle, die ich selbst geschrieben habe, und was ich dabei gelernt habe.

## Bash-Skripte

### Bedingung mit if (`zahl.sh`)

```bash
#!/bin/bash
if [ "$1" -gt 10 ]; then
  echo gross
else
  echo klein
fi
```

Gelernt: Vergleich von Zahlen mit `-gt`, Argumente mit `$1`.

### Schleife mit for (`summe.sh`)

```bash
#!/bin/bash
summe=0
for i in 1 2 3 4 5; do
  summe=$((summe + i))
done
echo $summe
```

Gelernt: Rechnen mit `$(( ))`, Schleife über eine Liste. Ergebnis: 15.

### Schleife mit while (`countdown.sh`)

```bash
#!/bin/bash
n=$1
while [ "$n" -gt 0 ]; do
  echo $n
  n=$((n - 1))
done
```

Gelernt: while läuft, solange die Bedingung stimmt. Ohne `n=$((n - 1))` wäre die Schleife endlos.

### Fehlerbehandlung (`safe.sh`)

```bash
#!/bin/bash
if [ ! -f "$1" ]; then
  echo Fehler
  exit 1
fi
cat "$1"
```

Gelernt: Prüfung mit `! -f`, Exit-Code 1 bei Fehler, mehrzeilige Dateien mit `cat > datei << 'EOF'`.

### Dateien zählen (`zaehle_txt.sh`)

```bash
#!/bin/bash
ls ~/daten/*.txt | wc -l
```

Gelernt: Pipe mit `|`, Zeilen zählen mit `wc -l`. Danach nicht vergessen: `chmod +x`.

## Reguläre Ausdrücke mit grep

| Aufgabe | Befehl |
|---|---|
| Zeilen, die mit "error" beginnen | `grep '^error' datei` |
| Zeilen, die auf ".log" enden | `grep '\.log$' datei` |
| Zeilen mit mindestens einer Ziffer | `grep '[0-9]' datei` |
| Zeilen mit einer dreistelligen Zahl | `grep -E '[0-9]{3}' datei` |
| Zeilen mit "foo" oder "bar" | `grep -E 'foo|bar' datei` |
| Anzahl der Zeilen mit "user" | `grep -c user datei` |
| Das ganze Wort "cat" | `grep -w cat datei` |

Wichtigste Erkenntnis: `grep` findet Text auch mitten in einem Wort (zum Beispiel "cat" in "Kathedrale"). Nur mit `-w` wird das ganze Wort gesucht. Außerdem unterscheidet Regex zwischen Groß- und Kleinschreibung, dafür gibt es `-i`.

## Security-Grundlagen (Übungsumgebung)

In einer isolierten Übungsumgebung im Klassenraum habe ich die Grundlagen der Web-Sicherheit kennengelernt: Aufklärung mit nmap und nikto, typische Schwachstellen wie SQL-Injection, Command-Injection und schwache Passwörter, und wie man sich dagegen schützt (Eingaben prüfen, Prepared Statements, starke Passwörter, Updates). Alle Übungen fanden ausschließlich gegen ein dafür bereitgestelltes Ziel statt.
