# grpcurl plugin

[grpcurl](https://github.com/fullstorydev/grpcurl) plugin for [proto](https://github.com/moonrepo/proto).

## Installation

grpcurl is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add grpcurl "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/grpcurl/plugin.toml"
proto pin grpcurl latest --resolve
proto install grpcurl
```
