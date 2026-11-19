# Docker Swarm vs. Kubernetes

**Orchestrierung:** steuert viele Container auf mehreren Rechnern automatisch. Sie verteilt die Container, skaliert sie und startet sie bei Absturz neu.

## Begriffe

| Begriff | Bedeutung |
| --- | --- |
| Cluster | alle Rechner zusammen |
| Node | ein Rechner im Cluster |
| Workload | die Anwendung, die laufen soll |
| Replica | eine weitere Kopie derselben Anwendung |

## Control Plane und Data Plane

- **Control Plane = das Gehirn:** entscheidet, was wo läuft, und überwacht den Cluster
- **Data Plane = die Ausführung:** Hier laufen die Container. Sie meldet ihren Zustand zurück.

Die Control Plane legt den **Soll-Zustand** fest (z. B. 3 Instanzen). Weicht der **Ist-Zustand** ab, korrigiert sie ihn automatisch.

**Beispiel:** Von 3 Webservern fällt einer aus. Der Cluster erkennt das und startet automatisch einen neuen. Verlorene Daten ersetzt er aber nicht, dafür braucht man Backups.

## Vergleich

| | Docker Swarm | Kubernetes |
| --- | --- | --- |
| Einstieg | einfach | aufwendiger |
| Integration | direkt in Docker eingebaut | eigene Plattform |
| Funktionen | überschaubar | sehr viele |
| Einsatz | kleine Cluster | große, komplexe Systeme |

> **Faustregel:** Swarm ist einfacher, Kubernetes kann mehr.
