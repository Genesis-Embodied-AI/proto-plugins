# jq plugin

[jq](https://github.com/jqlang/jq) (command-line JSON processor) plugin for
[proto](https://github.com/moonrepo/proto).

## Installation

jq is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add jq "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/jq/plugin.toml"
proto pin jq latest --resolve
proto install jq
```

Versions from 1.7.1 onward are supported.
