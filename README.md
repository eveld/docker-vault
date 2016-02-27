# Vault
This is a dockerized version of Vault that uses Consul as a HA backend.

To configure the location of Consul, set the following environment variables:
```
// The following values are the defaults
ENV CONSUL_ADDR consul:8500
ENV CONSUL_PATH vault
ENV CONSUL_SCHEME http
```

The version of Vault is set to 0.5.1 by default, but can be overridden by passing in:
```
--build-arg VAULT_VERSION=x.x.x
```

More information about Vault can be found at [https://www.vaultproject.io](https://www.vaultproject.io).
