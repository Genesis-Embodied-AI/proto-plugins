# atlas plugin

[Atlas](https://atlasgo.io) (database schema migration CLI) plugin for
[proto](https://github.com/moonrepo/proto).

Resolves versions from the [`@ariga/atlas`](https://www.npmjs.com/package/@ariga/atlas)
npm package, since Ariga does not tag every release on GitHub, and downloads the matching
build from [atlasbinaries.com](https://atlasbinaries.com). Requires proto 0.64 or later.
This is the EULA flavor; its CockroachDB driver and `docker://` dev database require
`atlas login`.

## Installation

Atlas is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add atlas "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/atlas/plugin.toml"
proto pin atlas latest --resolve
proto install atlas
```
