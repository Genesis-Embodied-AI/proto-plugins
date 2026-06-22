# buf plugin

[buf](https://github.com/bufbuild/buf) plugin for [proto](https://github.com/moonrepo/proto).

## Installation

buf is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add buf "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/buf/plugin.toml"
proto pin buf latest --resolve
proto install buf
```
