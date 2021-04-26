# testcab/frpc
# testcab/frps

The docker image for [frp](https://github.com/fatedier/frp), based on official images [fatedier/frpc](https://hub.docker.com/r/fatedier/frpc) and [fatedier/frps](https://hub.docker.com/r/fatedier/frps), with added support for reading config from environment variable `FRP_CONFIG_CONTENT`.

The config file for frp is located at `/app/frpc.ini` or `/app/frps.ini`. You can bind mount it or use environment variable `FRP_CONFIG_CONTENT` to specify its content.


### Run

#### frpc

```
docker run --rm testcab/frpc -e FRP_CONFIG_CONTENT="$(cat /etc/frp/frpc.ini)"
```

```
kubectl run frpc --image testcab/frpc --env FRP_CONFIG_CONTENT="$(cat /etc/frp/frpc.ini)"
```

#### frps

```
docker run --rm testcab/frps -e FRP_CONFIG_CONTENT="$(cat /etc/frp/frps.ini)"
```

```
kubectl run frps --image testcab/frps --env FRP_CONFIG_CONTENT="$(cat /etc/frp/frps.ini)"
```


### Envirionment Variables

Env                | Default | Description
------------------ | ------- | -----------
FRP_CONFIG_CONTENT | (unset) | The content of `frpc.ini` or `frps.ini`.


## LICENSE

[frp](https://github.com/fatedier/frp) is licensed under [Apache License 2.0](https://github.com/fatedier/frp/blob/dev/LICENSE).

This repository is licensed under [Apache License 2.0](LICENSE) as well.
