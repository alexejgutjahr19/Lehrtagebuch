# Git Branches

Ein Branch ist eine eigenständige Entwicklungslinie – eine Abzweigung vom Hauptzweig, auf der man unabhängig arbeitet. Technisch gesehen ist er nur ein Zeiger auf einen Commit.

Mit Branches bleibt der Hauptzweig stabil, während neue Funktionen oder Fixes separat entwickelt werden. Mehrere Personen können gleichzeitig an verschiedenen Branches arbeiten, ohne sich gegenseitig zu stören.

**Wichtige Befehle**

`git branch` zeigt alle Branches an.
`git branch name` erstellt einen neuen Branch.
`git switch name` wechselt zu einem Branch.
`git switch -c name` erstellt einen Branch und wechselt sofort dorthin.
`git branch -d name` löscht einen bereits gemergten Branch.

Der Hauptbranch heißt heute meist `main` und enthält den stabilen, freigegebenen Stand.
