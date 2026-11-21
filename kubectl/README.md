# kubectl plugin

[kubectl](https://kubernetes.io/docs/reference/kubectl/) (Kubernetes command-line
tool) plugin for [proto](https://github.com/moonrepo/proto).

## Installation

kubectl is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add kubectl "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/kubectl/plugin.toml"
proto pin kubectl latest --resolve
proto install kubectl
```

Versions from 1.16 onward are supported: older releases publish no checksums.
Pick a version within one minor release of the clusters you target, per the
[version skew policy](https://kubernetes.io/releases/version-skew-policy/#kubectl).
