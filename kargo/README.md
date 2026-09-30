# kargo plugin

[Kargo](https://github.com/akuity/kargo) CLI plugin for
[proto](https://github.com/moonrepo/proto).

## Installation

The Kargo CLI is not built into proto, so register this plugin, pin a version, then
install:

```shell
proto plugin add kargo "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/kargo/plugin.toml"
proto pin kargo latest --resolve
proto install kargo
```

Pin the minor of the Kargo control plane the CLI talks to: Kargo warns on a client and
server version mismatch.
