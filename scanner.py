import nmap
import json
import sys

if len(sys.argv) != 2:
    print("Usage: python scanner.py <IP>")
    sys.exit(1)

target_ip = sys.argv[1]

scanner = nmap.PortScanner()
scanner.scan(target_ip, arguments="-sV")

with open("result.json", "w") as f:
    json.dump(scanner._scan_result, f, indent=2)

print(f"Scan terminé pour {target_ip}, résultats enregistrés dans result.json")
