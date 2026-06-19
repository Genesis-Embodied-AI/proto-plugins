# proto-plugins

Custom [proto](https://moonrepo.dev/proto) tool plugins.

Each tool has its own directory with a `plugin.toml`. The root `.prototools` lists the
available plugins and the versions CI installs against.

## Usage

Each plugin's README has install instructions, for example:

```shell
proto plugin add prek "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/prek/plugin.toml"
proto pin prek latest --resolve
proto install prek
```

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md) for the plugin schema, repo conventions, and
how CI validates plugins.
