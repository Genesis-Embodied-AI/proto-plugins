# shfmt plugin

[shfmt](https://github.com/mvdan/sh) plugin for [proto](https://github.com/moonrepo/proto).

## Installation

shfmt is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add shfmt "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/shfmt/plugin.toml"
proto pin shfmt latest --resolve
proto install shfmt
```
