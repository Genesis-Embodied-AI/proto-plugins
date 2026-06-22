# shellcheck plugin

[shellcheck](https://github.com/koalaman/shellcheck) plugin for [proto](https://github.com/moonrepo/proto).

## Installation

shellcheck is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add shellcheck "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/shellcheck/plugin.toml"
proto pin shellcheck latest --resolve
proto install shellcheck
```
