# Ressourcenverteilung

Alle VMs teilen sich vier Ressourcen: **CPU, RAM, Speicher und Netzwerk**. Meist werden CPU und RAM zuerst knapp.

## Die vier Regler

| Regler | Bedeutung |
| --- | --- |
| Minimum (Reservierung) | So viel bekommt die VM immer. |
| Maximum (Limit) | Mehr bekommt die VM nie. |
| Priorität (Shares) | Wer zuerst dran ist, wenn es eng wird |
| Gruppen (Ressourcenpools) | Mehrere VMs teilen sich ein Budget. |

Beispiel: Der Mailserver bekommt immer mindestens 8 GB RAM, die Test-VM höchstens 4 GB.

## Überbuchen

Man verteilt mehr, als wirklich vorhanden ist, so wie eine Fluggesellschaft mehr Tickets verkauft, als es Sitze gibt. Das klappt, weil selten alle VMs gleichzeitig volle Leistung brauchen.

**Faustregeln:**
- **CPU:** höchstens 4 virtuelle CPUs pro echtem Kern
- **RAM:** höchstens 20 % mehr als vorhanden
- **Festplatte:** nie voller als 80 %

## RAM-Tricks

- **Ballooning:** Die VM gibt RAM ab, den sie gerade nicht braucht. Das ist harmlos.
- **Page Sharing:** Gleiche Daten werden nur einmal im RAM gespeichert. Das ist harmlos.
- **Swapping:** RAM wird auf die Festplatte ausgelagert und alles wird sehr langsam. Das ist ein **Warnzeichen**.

## Typische Fehler

| Fehler | Folge | Lösung |
| --- | --- | --- |
| Zu viele CPUs pro VM | VM wartet auf freie Kerne | klein anfangen |
| Zu viel RAM verteilt | Auslagern auf die Festplatte | wichtigen VMs festen RAM geben |
| Speicher nicht überwacht | Festplatte voll, VMs stoppen | Warnung ab 80 % |
| Snapshots statt Backup | Speicher wächst, alles wird langsamer | Snapshots kurz behalten, echtes Backup machen |
| Keine Reserve | VMs starten nach einem Ausfall nicht neu | immer einen Server als Reserve |

> **Wichtigste Regel: Messen statt raten.**
