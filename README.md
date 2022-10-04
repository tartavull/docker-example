# Build derivations
```
nix-build
```

Run binary
```
/nix/store/q94ry6yv2cbk6b3sb15vs65l83g21myn-hellogo/bin/hello

```

Run docker
```
docker load < /nix/store/xjp7djir4rfp2jqy3rpkyx1kn3iv5xbm-docker-image-hellogo-docker.tar.gz
docker run -p 8080:8080  hellogo-docker:xjp7djir4rfp2jqy3rpkyx1kn3iv5xbm
```

Test both
```
curl localhost:8080/caio 
```

