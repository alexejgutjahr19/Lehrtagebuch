# Git Cloning

Klonen lädt eine vollständige Kopie eines entfernten Repositories auf den eigenen Rechner – inklusive aller Dateien und der gesamten Versionsgeschichte.

`git clone URL` legt einen neuen Ordner mit dem Namen des Repositories an.
`git clone URL ordnername` verwendet einen selbst gewählten Ordnernamen.

Beim Klonen speichert Git das entfernte Repository automatisch unter dem Namen `origin`. Mit `git remote -v` sieht man, welche URL dahintersteckt.

Der Unterschied zu einem ZIP-Download: Ein Klon enthält die gesamte Geschichte und man kann sofort committen, pushen und pullen.
