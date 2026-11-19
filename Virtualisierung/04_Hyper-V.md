# Microsoft Hyper-V

- Typ-1-Hypervisor von Microsoft, seit Windows Server 2008
- In Windows 10/11 Pro, Enterprise und Windows Server enthalten, muss nur aktiviert werden
- **Nicht** in Windows Home

**So funktioniert es:** Der Hypervisor läuft direkt auf der Hardware und verteilt CPU, RAM und Speicher an die VMs. Das normale Windows läuft darüber und dient zur Verwaltung.

## Wichtige Funktionen

- **Virtuelle Festplatte:** eine Datei mit der Endung **.vhdx**
- **Virtueller Switch:** verbindet die VMs. Es gibt drei Arten:
  - **extern:** mit dem echten Netzwerk
  - **intern:** nur VMs und Host
  - **privat:** nur die VMs untereinander
- **Prüfpunkte:** So heißen Snapshots bei Hyper-V.
- **Ressourcenverwaltung:** CPU und RAM pro VM festlegen, dynamischer Arbeitsspeicher

## Vor- und Nachteile

| Vorteile | Nachteile |
| --- | --- |
| spart Kosten, Strom und Platz | braucht eine 64-Bit-CPU, aktivierte Virtualisierung im BIOS und mind. 4 GB RAM |
| flexibel und sicher | zu viele VMs bremsen alles |
| bessere Auslastung | nicht in Windows Home |

**Einsatz:** Server in Firmen, Testumgebungen, Basis für Microsoft Azure, in der Schule zum gefahrlosen Ausprobieren

## Hyper-V vs. VMware

| | Hyper-V | VMware |
| --- | --- | --- |
| Hersteller | Microsoft | Broadcom |
| Kosten | in Windows enthalten | Serverversion kostet Lizenz |
| Stärke | Windows-Umgebungen | Marktführer im Rechenzentrum |
