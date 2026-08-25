# op plugin

[1Password CLI](https://developer.1password.com/docs/cli/) plugin for
[proto](https://github.com/moonrepo/proto).

## Installation

op is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add op "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/op/plugin.toml"
proto pin op latest --resolve
proto install op
```

## Bumping to a new release

1Password does not publish a version index, so `plugin.toml` carries an explicit
`resolve.versions` list. Add the new release there before pinning it anywhere:

```shell
curl -s https://app-updates.agilebits.com/check/1/0/CLI2/en/2.0.0   # latest version
```

Releases are announced in the [1Password CLI release
notes](https://app-updates.agilebits.com/product_history/CLI2).
