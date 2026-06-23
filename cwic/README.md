# cwic plugin

[cwic](https://github.com/coreweave/cwic) (CoreWeave CLI) plugin for
[proto](https://github.com/moonrepo/proto).

## Installation

cwic is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add cwic "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/cwic/plugin.toml"
proto pin cwic latest --resolve
proto install cwic
```
