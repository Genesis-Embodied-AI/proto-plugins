# sccache plugin

[sccache](https://github.com/mozilla/sccache) (shared compilation cache for C/C++,
Rust, and more) plugin for [proto](https://github.com/moonrepo/proto).

## Installation

sccache is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add sccache "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/sccache/plugin.toml"
proto pin sccache latest --resolve
proto install sccache
```

Releases: https://github.com/mozilla/sccache/releases
