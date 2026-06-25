# claude plugin

[Claude Code](https://code.claude.com/docs) (Anthropic's agentic coding CLI)
plugin for [proto](https://github.com/moonrepo/proto).

## Installation

claude is not built into proto, so register this plugin, pin a version, then
install:

```shell
proto plugin add claude "https://raw.githubusercontent.com/Genesis-Embodied-AI/proto-plugins/main/claude/plugin.toml"
proto pin claude <version> --resolve
proto install claude
```

## Picking a version

Versions track Claude Code's GitHub release tags
(<https://github.com/anthropics/claude-code/releases>). The current release is
also published at
<https://downloads.claude.ai/claude-code-releases/latest>.

## Notes

- Binaries are served from `https://downloads.claude.ai/claude-code-releases/`
  as a single executable per platform (no archive). Linux uses the glibc build:
  the upstream `musl` variant is dynamically linked against the musl loader (not
  static), so it fails on glibc hosts such as standard CI runners.
- Upstream publishes checksums only inside a per-version `manifest.json`, which
  the TOML plugin format cannot parse, so installs are not checksum-verified.
