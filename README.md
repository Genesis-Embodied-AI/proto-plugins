# proto-plugins

Custom [proto](https://moonrepo.dev/proto) tool plugins.

Each tool has its own directory with a `plugin.toml`. The root `.prototools` lists the
available plugins and the versions CI installs against.

## Tools

| Tool | Description |
| --- | --- |
| [actionlint](./actionlint/) | GitHub Actions workflow linter |
| [air](./air/) | Live reload for Go apps |
| [atlas](./atlas/) | Database schema migration CLI |
| [blender](./blender/) | 3D creation suite |
| [buf](./buf/) | Protobuf build tooling |
| [cargo-deny](./cargo-deny/) | Cargo dependency linter (licenses, bans, advisories) |
| [claude](./claude/) | Claude Code, Anthropic's agentic coding CLI |
| [cloud-provider-kind](./cloud-provider-kind/) | LoadBalancer support for kind clusters |
| [cwic](./cwic/) | CoreWeave CLI |
| [direnv](./direnv/) | Per-directory environment switcher |
| [dprint](./dprint/) | Pluggable code formatter |
| [flux](./flux/) | FluxCD CLI |
| [flux-operator-mcp](./flux-operator-mcp/) | Flux Operator MCP server |
| [golangci-lint](./golangci-lint/) | Go linters aggregator |
| [grpcurl](./grpcurl/) | curl for gRPC services |
| [helm](./helm/) | Kubernetes package manager |
| [k9s](./k9s/) | Terminal UI for managing Kubernetes clusters |
| [kargo](./kargo/) | Kargo GitOps promotion CLI |
| [kind](./kind/) | Kubernetes in Docker |
| [kubeconform](./kubeconform/) | Kubernetes manifest validator |
| [op](./op/) | 1Password CLI |
| [prek](./prek/) | pre-commit-compatible hook runner |
| [rumdl](./rumdl/) | Markdown linter and formatter |
| [sccache](./sccache/) | Shared compilation cache (ccache-like) |
| [shellcheck](./shellcheck/) | Shell script static analysis |
| [shfmt](./shfmt/) | Shell script formatter |
| [taplo](./taplo/) | TOML toolkit (format and lint) |
| [task](./task/) | Task runner |
| [terraform](./terraform/) | Infrastructure as code |
| [tsh](./tsh/) | Teleport client CLI |
| [typos](./typos/) | Source code spell checker |
| [yamlfmt](./yamlfmt/) | YAML formatter |
| [yq](./yq/) | YAML, JSON, and XML processor |

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
