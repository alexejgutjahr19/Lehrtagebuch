# Hypervisor

**Hypervisor:** Programm, das einen echten Computer in mehrere VMs aufteilt und die Leistung fair verteilt.

| | Typ 1 – Bare Metal | Typ 2 – als App |
| --- | --- | --- |
| Läuft auf | direkt auf der Hardware | auf einem Betriebssystem (z. B. Windows) |
| Eigenschaften | schneller und sicherer | einfacher, aber langsamer |
| Einsatz | Firmen und Server | eigener PC, zum Ausprobieren |
| Beispiele | VMware ESXi, Hyper-V, Proxmox, Xen | VirtualBox, VMware Workstation |

**Voraussetzung:** Die Virtualisierung muss im BIOS aktiviert sein (Intel VT-x bzw. AMD-V).

**Paravirtualisierung:** Die VM weiß, dass sie virtuell ist, und nutzt spezielle Treiber. Dadurch ist sie fast so schnell wie echte Hardware. Bei Proxmox heißen diese Treiber **VirtIO**.
