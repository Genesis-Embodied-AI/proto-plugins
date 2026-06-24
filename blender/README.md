# blender plugin

[Blender](https://www.blender.org) plugin for [proto](https://github.com/moonrepo/proto).

Resolves versions from Blender's [git tags](https://github.com/blender/blender) and downloads the matching build from [download.blender.org](https://download.blender.org/release/).

## Installation

Blender is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add blender "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/blender/plugin.toml"
proto pin blender latest --resolve
proto install blender
```
