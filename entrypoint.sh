#!/bin/sh
cat > /etc/vault.d/consul.hcl <<EOF
backend "consul" {
  address = "$CONSUL_ADDR"
  path = "$VAULT_PATH"
  scheme = "http"
}
EOF

exec vault server -config=/etc/vault.d
