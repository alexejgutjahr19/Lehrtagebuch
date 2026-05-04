# Git Architecture

Git speichert keine Dateikopien, sondern Schnappschüsse des gesamten Projekts.

**Objekte** sind die Bausteine von Git. Ein Blob speichert den Inhalt einer Datei. Ein Tree speichert einen Ordner. Ein Commit speichert einen Schnappschuss und zeigt auf den vorherigen Commit. Ein Tag ist ein benannter Zeiger auf einen Commit, meist für Versionen wie v1.0. Jedes Objekt bekommt einen eindeutigen SHA-1-Hash – ändert sich der Inhalt, ändert sich der Hash.

**Der Index** ist die Zwischenstufe vor einem Commit. `git add` legt Änderungen dort ab, `git commit` macht sie dauerhaft.

**HEAD** zeigt immer auf den aktuellen Commit. Wechselt man den Branch, bewegt sich HEAD mit.

**Das .git-Verzeichnis** enthält alles, was Git weiß. Löscht man es, ist die gesamte Geschichte weg.
