# tsh plugin

[tsh](https://goteleport.com/docs/connect-your-client/tsh/) (Teleport client CLI)
plugin for [proto](https://github.com/moonrepo/proto).

## Installation

tsh is not built into proto, so register this plugin, pin a version, then install:

```shell
proto plugin add tsh "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/tsh/plugin.toml"
proto pin tsh <version> --resolve
proto install tsh
```

## Picking a version

The Teleport [client/server compatibility guarantee][compat] requires only that
tsh's major version matches the server's. Find your Teleport server's running
version with:

```shell
curl -s https://<your-teleport-domain>/v1/webapi/find | jq -r '.server_version'
```

Pin the matching tsh release (any minor/patch within the same major works).
Available releases live at <https://github.com/gravitational/teleport/releases>;
the binaries themselves are served from `https://cdn.teleport.dev/`.

[compat]: https://goteleport.com/docs/upgrading/overview/#component-compatibility

## Notes

The Teleport release tarball bundles multiple binaries (`tsh`, `tctl`, `tbot`,
`teleport`, `teleport-update`, `fdpass-teleport`). This plugin shims only `tsh`;
the others are unpacked alongside but not registered. Add separate plugins if
you need them.
