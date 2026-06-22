# golangci-lint plugin

[golangci-lint](https://github.com/golangci/golangci-lint) plugin for [proto](https://github.com/moonrepo/proto).

## Installation

golangci-lint is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add golangci-lint "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/golangci-lint/plugin.toml"
proto pin golangci-lint latest --resolve
proto install golangci-lint
```
