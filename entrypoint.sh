#!/bin/sh
cat > /etc/vault.d/consul.hcl <<EOF
ha_backend "consul" {
  address = "$CONSUL_ADDR"
  path = "$CONSUL_PATH"
  scheme = "$CONSUL_SCHEME"
}
EOF

exec vault server -config=/etc/vault.d
