FROM parrotsec/core:latest

ENV DEBIAN_FRONTEND=noninteractive

# Mise à jour + installation des outils sécurité et Python
RUN apt-get update && apt-get install -y \
    metasploit-framework \
    nmap \
    wireshark-common \
    tshark \
    zaproxy \
    python3 \
    python3-pip \
    && pip3 install python-nmap \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copier ton script de scan dans le conteneur
#COPY scanner.py /root/scanner.py
#WORKDIR /root

# Commande par défaut
CMD ["/bin/bash"]
