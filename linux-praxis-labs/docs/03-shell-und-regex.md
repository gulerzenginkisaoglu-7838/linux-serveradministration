# 03 – Shell, Pipes, Umleitung und Regex

> 🇬🇧 **In short:** Pipes, redirection, variables, links and regular expressions with grep.

## Umleitung

| Zeichen | Bedeutung | Beispiel |
|---------|-----------|----------|
| `>` | Ausgabe in Datei, **überschreibt** | `ls > liste.txt` |
| `>>` | Ausgabe an Datei **anhängen** | `date >> log.txt` |
| `2>` | Fehlermeldungen umleiten | `find / -name x 2> fehler.txt` |
| `2>/dev/null` | Fehlermeldungen verwerfen | |
| `<` | Eingabe aus Datei | `wc -l < datei.txt` |

## Pipes

Die Ausgabe eines Befehls wird die Eingabe des nächsten:

```bash
cat /etc/passwd | cut -d: -f1 | sort | head -n 5
```

Liest die Benutzerliste → nimmt nur Feld 1 (Name) → sortiert → zeigt die ersten 5.

## Variablen

```bash
NAME="Güler"
echo "Hallo $NAME"
echo $HOME $USER $PATH
export EDITOR=nano     # für Unterprogramme sichtbar machen
```

## Links

| Befehl | Typ | Verhalten |
|--------|-----|-----------|
| `ln datei hardlink` | Hardlink | Zweiter Name für dieselben Daten (gleiche Inode) |
| `ln -s ziel symlink` | Symbolischer Link | Verknüpfung, wird ungültig, wenn das Ziel gelöscht wird |

## Regex mit grep

| Muster | Bedeutung | Beispiel |
|--------|-----------|----------|
| `^` | Zeilenanfang | `grep "^root" /etc/passwd` |
| `$` | Zeilenende | `grep "bash$" /etc/passwd` |
| `.` | ein beliebiges Zeichen | `grep "h.llo"` |
| `[0-9]` | eine Ziffer | |
| `+` / `*` | einmal oder mehr / beliebig oft | `grep -E "[0-9]+"` |

| Option | Bedeutung |
|--------|-----------|
| `-i` | Groß-/Kleinschreibung ignorieren |
| `-v` | Zeilen **ohne** Treffer |
| `-c` | Treffer zählen |
| `-r` | rekursiv in Ordnern suchen |
| `-E` | erweiterte Regex |
| `-o` | nur den Treffer ausgeben |

## Was ich gelernt habe

- `>` und `>>` zu verwechseln kann eine Datei leeren.
- Mit Pipes baut man aus kleinen Befehlen große Auswertungen.
- `grep -v "^#"` blendet Kommentarzeilen in Konfigurationsdateien aus.
