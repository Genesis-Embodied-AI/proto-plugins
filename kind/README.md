# kind plugin

[kind](https://github.com/kubernetes-sigs/kind) plugin for
[proto](https://github.com/moonrepo/proto).

## Installation

kind is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add kind "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/kind/plugin.toml"
proto pin kind latest --resolve
proto install kind
```
