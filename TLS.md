# TLS

## Directory .certificates

```shell
mkcert domain.com
```

## .docker/certificates.yml

```yaml
tls:
  certificates:
    - certFile: /certificates/domain.com.pem
      keyFile: /certificates/domain.com-key.pem
```

## -web

```yaml
labels:
  - "traefik.http.routers.awesome.tls=true"
```

## traefik

```yaml
command:
  - "--providers.file.filename=/etc/traefik/certificates.yml"

volumes:
  - "./.docker/certificates.yml:/etc/traefik/certificates.yml"
  - "./.certificates:/certificates:ro"
```