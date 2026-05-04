# SQL Joins

Ein Join verknüpft zwei Tabellen über eine gemeinsame Spalte, meist eine ID.

**INNER JOIN** gibt nur Zeilen zurück, die in beiden Tabellen einen Treffer haben.
`SELECT k.name, b.id FROM kunden k INNER JOIN bestellungen b ON k.id = b.kunden_id;`

**LEFT JOIN** gibt alle Zeilen der linken Tabelle zurück. Fehlende Werte rechts werden mit `NULL` gefüllt.
`SELECT k.name, b.id FROM kunden k LEFT JOIN bestellungen b ON k.id = b.kunden_id;`

**RIGHT JOIN** ist das Gegenteil – alle Zeilen der rechten Tabelle bleiben erhalten. In der Praxis selten genutzt, da man dasselbe mit LEFT JOIN und getauschten Tabellen erreicht.

Mehrere Joins lassen sich aneinanderreihen:
`SELECT k.name, b.id, p.bezeichnung FROM kunden k INNER JOIN bestellungen b ON k.id = b.kunden_id INNER JOIN produkte p ON b.produkt_id = p.id;`
