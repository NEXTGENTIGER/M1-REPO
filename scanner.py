import nmap
import json
import sys

target = sys.argv[1] if len(sys.argv) > 1 else "127.0.0.1"
scanner = nmap.PortScanner()
scanner.scan(target, arguments="-sV")

with open("/app/results/result.json", "w") as f:
    json.dump(scanner._scan_result, f, indent=2)

print(f"Scan completed for {target}. Output saved in result.json.")
