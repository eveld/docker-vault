FROM alpine:3.3

ENV CONSUL_ADDR "consul:8500"
ENV VAULT_PATH "vault"

EXPOSE 8200

ADD files/vault /usr/local/bin/vault
ADD files/*.hcl /etc/vault.d/
ADD entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
