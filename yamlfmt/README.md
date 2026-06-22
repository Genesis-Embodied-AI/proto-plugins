# yamlfmt plugin

[yamlfmt](https://github.com/google/yamlfmt) plugin for [proto](https://github.com/moonrepo/proto).

## Installation

yamlfmt is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add yamlfmt "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/yamlfmt/plugin.toml"
proto pin yamlfmt latest --resolve
proto install yamlfmt
```
