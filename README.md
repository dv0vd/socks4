# Simple SOCKS4 server
```
podman run -d --name socks4 -p 60000:1080 --restart unless-stopped --memory=128M --cpus=0.25 docker.io/dv0vd/socks4
```

Inside the container, you can view some basic logs (connect/disconnect) with the following command:
```
podman logs -f socks4 
```

If IPv6 errors occur, it is necessary to create a custom network with IPv6 support:
```
podman network create --ipv6 podman_network

```
Then, specify the network in the `podman run` command:
```
podman run -d --name socks4 --network podman_network -p 60000:1080 --restart unless-stopped --memory=128M --cpus=0.25 docker.io/dv0vd/socks4
```