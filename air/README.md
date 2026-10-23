# air plugin

[air](https://github.com/air-verse/air) (live reload for Go apps) plugin for
[proto](https://github.com/moonrepo/proto).

## Installation

air is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add air "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/air/plugin.toml"
proto pin air latest --resolve
proto install air
```
