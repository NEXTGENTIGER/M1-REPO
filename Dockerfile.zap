FROM openjdk:11-jre-slim

ENV ZAP_VERSION=2.13.0
ENV ZAP_HOME=/zap

RUN apt-get update && apt-get install -y wget unzip && rm -rf /var/lib/apt/lists/*

RUN wget -O /tmp/zap.zip https://github.com/zaproxy/zaproxy/releases/download/v${ZAP_VERSION}/ZAP_${ZAP_VERSION}_Linux.zip \
  && mkdir -p $ZAP_HOME \
  && unzip /tmp/zap.zip -d $ZAP_HOME \
  && rm /tmp/zap.zip

ENV PATH="$ZAP_HOME:$PATH"

WORKDIR $ZAP_HOME

CMD ["./zap.sh", "-daemon", "-host", "0.0.0.0", "-port", "8090"]
