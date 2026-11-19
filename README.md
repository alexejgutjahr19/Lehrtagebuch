# Lehrtagebuch

## Inhalt

### SQL
**Notizen**
1. [CRUD](SQL/Notizen/01_CRUD.md)
2. [Joins](SQL/Notizen/02_Joins.md)

**Übungen** (Reihenfolge der Dateien = Reihenfolge zum Ausführen)
- [01_CRUD](SQL/Uebungen/01_CRUD/) – `01_create.sql` → `02_insert.sql` → `03_drop.sql`

### Git
1. [Architektur](Git/01_Architecture.md)
2. [Klonen](Git/02_Cloning.md)
3. [Branches](Git/03_Branches.md)
4. [Merges](Git/04_Merges.md)
5. [Pull Requests](Git/05_PullRequests.md)
6. [Issues](Git/06_Issues.md)

### Virtualisierung
1. [Grundlagen](Virtualisierung/01_Grundlagen.md)
2. [Hypervisor](Virtualisierung/02_Hypervisor.md)
3. [Ressourcenverteilung](Virtualisierung/03_Ressourcenverteilung.md)
4. [Microsoft Hyper-V](Virtualisierung/04_Hyper-V.md)
5. [Proxmox VE](Virtualisierung/05_Proxmox.md)
6. [Orchestrierung: Docker Swarm vs. Kubernetes](Virtualisierung/06_Orchestrierung.md)

### Cloud
1. [XaaS: SaaS, PaaS, IaaS](Cloud/01_XaaS.md)

## Übungsdatenbank starten

```
docker compose up -d
```

- PostgreSQL/PostGIS: `localhost:54321`
- pgAdmin: http://localhost:5050 (Verbindung zu Host `postgis`, Port `5432`)
