# Run an Ozone Full Node

On an aarch64 server, run the following command to build the Ozone chain Docker image:

```bash
make amd64
```

Now you can run or manage the Ozone chain node with Docker Compose:

```bash
docker compose up -d
docker compose logs -f --tail 100
```

Wait for the node to catch up. RPC ports are `8545` for HTTP and `8546` for WS.
