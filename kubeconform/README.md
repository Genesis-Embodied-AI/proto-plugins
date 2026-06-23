# kubeconform plugin

[kubeconform](https://github.com/yannh/kubeconform) plugin for
[proto](https://github.com/moonrepo/proto).

## Installation

kubeconform is not built into proto, so register this plugin, pin a version, then
install:

```shell
proto plugin add kubeconform "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/kubeconform/plugin.toml"
proto pin kubeconform latest --resolve
proto install kubeconform
```
