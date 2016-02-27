FROM alpine:3.3
MAINTAINER Erik Veld "erik@nauts.io"

# Consul configuration
ENV CONSUL_ADDR consul:8500
ENV CONSUL_PATH vault
ENV CONSUL_SCHEME http

# Vault version
ENV VAULT_VERSION=0.5.1

EXPOSE 8200

# Download, verify and unzip Vault
RUN apk add --update openssl \
    && wget -q https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip \
    && wget -qO - https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS \
    | grep linux_amd64 \
    | sha256sum -c \
    && unzip vault_${VAULT_VERSION}_linux_amd64.zip -d /usr/local/bin \
    && rm vault_${VAULT_VERSION}_linux_amd64.zip

# Copy configuration and entrypoint
COPY files/*.hcl /etc/vault.d/
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
