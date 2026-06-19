# direnv plugin

[direnv](https://github.com/direnv/direnv) plugin for [proto](https://github.com/moonrepo/proto).

## Installation

direnv is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add direnv "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/direnv/plugin.toml"
proto pin direnv latest --resolve
proto install direnv
```
