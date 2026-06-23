# cloud-provider-kind plugin

[cloud-provider-kind](https://github.com/kubernetes-sigs/cloud-provider-kind) plugin
for [proto](https://github.com/moonrepo/proto).

## Installation

cloud-provider-kind is not built into proto, so register this plugin, pin a version,
then install:

```shell
proto plugin add cloud-provider-kind "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/cloud-provider-kind/plugin.toml"
proto pin cloud-provider-kind latest --resolve
proto install cloud-provider-kind
```
