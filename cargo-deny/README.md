# cargo-deny plugin

[cargo-deny](https://github.com/EmbarkStudios/cargo-deny) plugin for [proto](https://github.com/moonrepo/proto).

## Installation

cargo-deny is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add cargo-deny "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/cargo-deny/plugin.toml"
proto pin cargo-deny latest --resolve
proto install cargo-deny
```
