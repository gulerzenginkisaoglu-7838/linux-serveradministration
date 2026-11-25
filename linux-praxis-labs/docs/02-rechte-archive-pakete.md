# 02 – Rechte, Archive und Pakete

> 🇬🇧 **In short:** File permissions (chmod/chown), archives (tar, gzip, zip) and package management (apt, dpkg).

## Dateirechte lesen

```text
-rwxr-x---  1 gzk  team  ...  skript.sh
 │  │  │
 │  │  └── andere (other): keine Rechte
 │  └───── Gruppe (team):  lesen + ausführen
 └──────── Besitzer (gzk): lesen + schreiben + ausführen
```

| Recht | Buchstabe | Zahl |
|-------|-----------|------|
| lesen | r | 4 |
| schreiben | w | 2 |
| ausführen | x | 1 |

`chmod 750 skript.sh` = Besitzer 7 (rwx), Gruppe 5 (r-x), andere 0 (---).

| Befehl | Bedeutung |
|--------|-----------|
| `chmod u+x datei` | Besitzer darf ausführen |
| `chmod 640 datei` | rw- r-- --- |
| `chown gzk:team datei` | Besitzer und Gruppe ändern |

## Archive

| Befehl | Bedeutung |
|--------|-----------|
| `tar -czf archiv.tar.gz ordner/` | Ordner packen und mit gzip komprimieren |
| `tar -tzf archiv.tar.gz` | Inhalt anzeigen, ohne zu entpacken |
| `tar -xzf archiv.tar.gz -C ziel/` | In einen Zielordner entpacken |
| `gzip datei` / `gunzip datei.gz` | Einzelne Datei komprimieren / entpacken |
| `zip -r a.zip ordner/` / `unzip a.zip` | ZIP-Archiv (Windows-kompatibel) |

Merkhilfe für `tar`: **c**reate, e**x**tract, **t** = list, **z** = gzip, **f** = file.

## Pakete

| Befehl | Bedeutung |
|--------|-----------|
| `apt update` | Paketlisten aktualisieren |
| `apt upgrade` | Installierte Pakete aktualisieren |
| `apt install paket` / `apt remove paket` | Installieren / entfernen |
| `apt search wort` | Paket suchen |
| `dpkg -l` | Alle installierten Pakete |
| `dpkg -L paket` | Welche Dateien gehören zum Paket? |
| `dpkg -i datei.deb` | Lokale .deb-Datei installieren |

Paketquellen stehen in `/etc/apt/sources.list`.

## Was ich gelernt habe

- Rechte als Zahl (`chmod 750`) sind schneller als Buchstaben, wenn man die 4-2-1-Regel kennt.
- `apt update` installiert nichts – es holt nur die Listen.
- Nach einer DVD-Installation zeigt `sources.list` oft nur auf die DVD. Dann muss man die Internet-Quellen eintragen.
