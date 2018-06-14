1\. Typing in all the options to start the registry can become tedious. An easier and simpler way is to use Docker Compose. Here's an example of a `docker-compose.yml` file that will start the registry. The YAML file has already been created for you. Just look it over and then continue to the next step.<br>

###### docker-compose.yaml

```.yaml
registry:
  restart: always
  image: registry:2
  ports:
    - 5000:5000
  environment:
    REGISTRY_HTTP_TLS_CERTIFICATE: /certs/domain.crt
    REGISTRY_HTTP_TLS_KEY: /certs/domain.key
    REGISTRY_AUTH: htpasswd
    REGISTRY_AUTH_HTPASSWD_PATH: /auth/htpasswd
    REGISTRY_AUTH_HTPASSWD_REALM: Registry Realm
  volumes:
    - /path/registry-data:/var/lib/registry
    - /path/certs:/certs
    - /path/auth:/auth
```

2. To start the registry, type:

```
$ docker-compose up
```

