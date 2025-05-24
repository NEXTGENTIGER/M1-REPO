FROM openjdk:11-jre-slim

# Définir la version de ZAP comme variable d'environnement
ENV ZAP_VERSION=2.13.0
ENV ZAP_HOME=/zap

# Installer wget, télécharger ZAP, extraire l'archive
RUN apt-get update && \
    apt-get install -y wget tar && \
    wget -O /tmp/zap.tar.gz https://github.com/zaproxy/zaproxy/releases/download/v${ZAP_VERSION}/ZAP_${ZAP_VERSION}_Core.tar.gz && \
    mkdir -p ${ZAP_HOME} && \
    tar -xzf /tmp/zap.tar.gz -C ${ZAP_HOME} --strip-components=1 && \
    rm /tmp/zap.tar.gz && \
    apt-get clean

# Dossier de travail
WORKDIR ${ZAP_HOME}

# Commande par défaut
CMD ["./zap.sh", "-daemon", "-host", "0.0.0.0", "-port", "8090"]
