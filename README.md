# Simple SOCKS4 server
To run a SOCKS4 server, execute the following command:
```
podman run -d --name socks4 -p 60000:1080 --restart unless-stopped --memory=128M --cpus=0.25 docker.io/dv0vd/socks4
```

You can view basic logs (connect/disconnect events) from inside the container with this command:
```
podman logs -f socks4 
```

If you encounter IPv6 errors, you will need to create a custom network with IPv6 support:
```
podman network create --ipv6 podman_network
```

After creating the network, specify it in the `podman run` command:
```
podman run -d --name socks4 --network podman_network -p 60000:1080 --restart unless-stopped --memory=128M --cpus=0.25 docker.io/dv0vd/socks4
```