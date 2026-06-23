# yq plugin

[yq](https://github.com/mikefarah/yq) plugin for [proto](https://github.com/moonrepo/proto).

## Installation

yq is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add yq "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/yq/plugin.toml"
proto pin yq latest --resolve
proto install yq
```
