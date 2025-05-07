ARG BUILD_FROM
FROM ${BUILD_FROM}

RUN apk add --no-cache curl unzip bash

ENV ALLOY_VERSION=v1.8.3
ENV ARCH=arm64

WORKDIR /app

RUN curl -fsSL -o alloy.zip https://github.com/grafana/alloy/releases/download/${ALLOY_VERSION}/alloy-linux-${ARCH}.zip && \
    unzip alloy.zip && \
    mv alloy-linux-${ARCH} /usr/bin/alloy && \
    chmod +x /usr/bin/alloy && \
    rm alloy.zip

COPY run.sh /run.sh
COPY config.alloy /etc/alloy/config.alloy

RUN chmod +x /run.sh

CMD [ "/run.sh" ]