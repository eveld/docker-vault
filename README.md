# Vault
This is a dockerized version of Vault that uses Consul as a HA backend.

```
docker run -ti \
  -p 8200:8200 \
  -e CONSUL_ADDR=consul:8500 \
  -e CONSUL_PATH=vault \
  -e CONSUL_SCHEME=http \
  cargonauts/vault
```

The version of Vault is set to 0.5.1 by default, but can be overridden by passing in:
```
-e VAULT_VERSION=x.x.x
```

Should be built automatically on Docker Hub.

More information about Vault can be found at [https://www.vaultproject.io](https://www.vaultproject.io).
