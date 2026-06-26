# terraform plugin

[Terraform](https://github.com/hashicorp/terraform) plugin for
[proto](https://github.com/moonrepo/proto).

Binaries are served from <https://releases.hashicorp.com/terraform/> rather than GitHub
release assets, so the plugin uses HashiCorp's standard zip + companion `SHA256SUMS`
file.

## Installation

terraform is not built into proto, so register this plugin, pin a version, then
install:

```shell
proto plugin add terraform "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/terraform/plugin.toml"
proto pin terraform latest --resolve
proto install terraform
```
