# Git Merges

Mergen führt zwei Branches zusammen. Git sucht den letzten gemeinsamen Commit beider Branches und kombiniert die Änderungen zu einem neuen Commit.

`git merge name` führt den angegebenen Branch in den aktuell aktiven Branch zusammen.

**Fast-Forward** tritt auf, wenn sich der Hauptbranch seit der Abzweigung nicht verändert hat. Git bewegt den Zeiger einfach vorwärts – ohne eigenen Merge-Commit.

**Merge-Konflikt** entsteht, wenn beide Branches dieselbe Stelle einer Datei unterschiedlich verändert haben. Git markiert die Stellen mit `<<<<<<<`, `=======` und `>>>>>>>`. Man bereinigt die Datei manuell und schließt den Merge mit `git add` und `git commit` ab.

**Rebase** ist eine Alternative: Die eigenen Commits werden so umgeschrieben, als wären sie auf dem aktuellen Stand des Hauptbranches entstanden. Das ergibt eine sauberere Geschichte, verändert aber bestehende Commits.
