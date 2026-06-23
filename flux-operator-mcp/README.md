# flux-operator-mcp plugin

[flux-operator-mcp](https://github.com/controlplaneio-fluxcd/flux-operator) (Flux
Operator MCP server) plugin for [proto](https://github.com/moonrepo/proto).

## Installation

flux-operator-mcp is not built into proto, so register this plugin, pin a version,
then install:

```shell
proto plugin add flux-operator-mcp "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/flux-operator-mcp/plugin.toml"
proto pin flux-operator-mcp latest --resolve
proto install flux-operator-mcp
```
