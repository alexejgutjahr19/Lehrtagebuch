# SQL CRUD

CRUD steht für Create, Read, Update, Delete – die vier Grundoperationen jeder Datenbank.

**Create** fügt neue Zeilen ein.
`INSERT INTO kunden (name, stadt) VALUES ('Anna', 'Berlin');`

**Read** liest Daten aus. Mit `WHERE` schränkt man das Ergebnis ein.
`SELECT * FROM kunden WHERE stadt = 'Berlin';`

**Update** ändert bestehende Zeilen. Ohne `WHERE` werden alle Zeilen verändert.
`UPDATE kunden SET stadt = 'Hamburg' WHERE name = 'Anna';`

**Delete** löscht Zeilen. Ohne `WHERE` wird die gesamte Tabelle geleert.
`DELETE FROM kunden WHERE name = 'Anna';`
