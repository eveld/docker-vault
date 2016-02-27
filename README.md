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

More information about Vault can be found at [https://www.vaultproject.io](https://www.vaultproject.io).
