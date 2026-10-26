# k9s plugin

[k9s](https://github.com/derailed/k9s) (terminal UI for managing Kubernetes
clusters) plugin for [proto](https://github.com/moonrepo/proto).

## Installation

k9s is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add k9s "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/k9s/plugin.toml"
proto pin k9s latest --resolve
proto install k9s
```
