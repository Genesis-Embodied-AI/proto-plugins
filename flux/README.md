# flux plugin

[flux](https://github.com/fluxcd/flux2) (FluxCD CLI) plugin for
[proto](https://github.com/moonrepo/proto).

## Installation

flux is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add flux "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/flux/plugin.toml"
proto pin flux latest --resolve
proto install flux
```
