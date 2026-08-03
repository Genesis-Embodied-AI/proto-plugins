# helm plugin

[helm](https://helm.sh) plugin for [proto](https://github.com/moonrepo/proto).

## Installation

helm is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add helm "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/helm/plugin.toml"
proto pin helm latest --resolve
proto install helm
```

## Notes

Binaries come from <https://get.helm.sh>, not the GitHub release assets, and each archive
nests the binary under an `<os>-<arch>/` directory. Releases are listed at
<https://github.com/helm/helm/releases>.
