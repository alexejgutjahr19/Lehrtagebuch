# Proxmox VE

- Kostenloser **Typ-1-Hypervisor**, Open Source, basiert auf Linux
- Bedienung über die Weboberfläche im Browser (Port 8006)

## VM oder Container?

| | VM (KVM) | Container (LXC) |
| --- | --- | --- |
| Betriebssystem | beliebig (Windows, Linux …) | nur Linux |
| Kernel | eigener | teilt den Kernel mit dem Host |
| Ressourcen | braucht mehr | sehr sparsam, startet in Sekunden |
| Trennung | stark | schwächer |

**Unterschied zu Docker:** Docker packt eine einzelne Anwendung in einen Container, LXC ein ganzes Linux-System. Docker läuft am stabilsten in einer VM.

**VirtIO:** Für schnelle VMs bei Festplatte und Netzwerkkarte VirtIO wählen. Windows braucht dafür extra Treiber (virtio-win). Dazu im Gast den **QEMU Guest Agent** installieren.

## Netzwerk

- **vmbr0** ist der virtuelle Switch von Proxmox. Er wird bei der Installation automatisch angelegt.
- VMs und Container werden daran angeschlossen. Die echte Netzwerkkarte verbindet ihn mit dem LAN.
- **Bond:** mehrere Netzwerkkarten bündeln
- **VLAN:** mehrere getrennte Netze auf einem Kabel

## Cluster

| Begriff | Bedeutung |
| --- | --- |
| Host | der echte Server |
| Node | ein Host im Cluster |
| Cluster | mehrere Nodes, die zusammenarbeiten |

Jede Node zeigt die Weboberfläche für den ganzen Cluster.

**Hochverfügbarkeit (HA):** Fällt eine Node aus, werden ihre VMs automatisch auf anderen Nodes neu gestartet.

**Quorum:** Der Cluster braucht die Mehrheit der Stimmen, um zu arbeiten. Bei 3 Nodes sind 2 nötig.
**2-Node-Problem:** Fällt bei 2 Nodes eine aus, fehlt die Mehrheit. Lösung: ein **QDevice** als dritte Stimme.

## Benutzer & Rechte

| Person | Was darf sie? |
| --- | --- |
| Administrator | alles |
| VM-User | nur seine eigene VM starten, stoppen und die Konsole öffnen |
| Endnutzer | kein Proxmox-Konto, nutzt nur den Dienst in der VM (z. B. per RDP) |

**Rechte = Wer + Was + Wo** (z. B. Anna + VM-User-Rolle + VM 101)

> **Merke:** Ein Proxmox-Konto ist kein Konto in der VM. Im Gast muss man sich trotzdem anmelden.

## Einsatz

Kleine und mittlere Firmen, Ersatz für VMware, Schulungslabore, Hosting, Homelab

## Typische Fehler

| Problem | Lösung |
| --- | --- |
| Windows findet keine Festplatte | VirtIO-Treiber beim Setup laden |
| Windows 11 lässt sich nicht installieren | UEFI und TPM aktivieren |
| VM ist langsam | VirtIO statt alter Geräte verwenden |
| Geklonte VMs haben Konflikte | Vorlage vorher bereinigen (sysprep) |
| Docker im Container geht nicht | Docker in eine VM packen |
| Cluster nach Ausfall gesperrt | dritte Stimme (QDevice) ergänzen |

> **Plane die VM, bevor du sie erstellst. Ein Snapshot ist kein Backup!**
