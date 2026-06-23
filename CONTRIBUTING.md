# Contributing

How to add and maintain proto TOML plugins in this repo.

## Repository contract

Each tool lives in its own directory containing a `plugin.toml` (the plugin) and a
`README.md`. The root `.prototools` is the source of truth for what exists: it pins a
version per tool and registers each plugin under `[plugins]` with a `file://` locator.

CI installs every pinned tool through its local plugin across Linux, macOS (x64 and
arm64), and Windows, then runs `scripts/smoke-test.sh` to confirm each resolves to a
runnable binary. Install alone is not enough: proto reports a wrong `exe-path` as a
successful install and only fails when the dangling binary is used.

## Adding a plugin

1. Create `<tool>/plugin.toml`. See the schema reference below and copy an existing
   plugin as a starting point.
2. Add `<tool>/README.md` with usage and a link to upstream releases.
3. Register it and pin a version in `.prototools` (in-repo plugins use a `file://`
   locator):

   ```toml
   <tool> = "X.Y.Z"

   [plugins]
   <tool> = "file://./<tool>/plugin.toml"
   ```

   `proto pin <tool> X.Y.Z` writes the pin line for you.

4. Verify it installs and the checks pass (see below).

## Schema reference

The TOML plugin format is documented at
https://moonrepo.dev/docs/proto/non-wasm-plugin. The fields used here:

- `name`, `type` (required): `type` is one of `language`, `dependency-manager`,
  `package-manager`, or `cli`.
- `[resolve]`: how versions are discovered. `git-url` lists git tags; pair it with
  `version-pattern` (a regex with named groups `major`/`minor`/`patch`/...) when tags
  carry a prefix such as `v`.
- `[platform.{linux,macos,windows}]`: `download-file` and optional `checksum-file`
  per OS, plus `exe-path` (the binary inside the archive). Tokens: `{version}`,
  `{arch}`, `{os}`, `{libc}`.
- `[install]`: `download-url` and optional `checksum-url`, built from the platform
  files. Prefer publishing a `checksum-url` so installs are verified.

## Conventions

- Use the upstream release's static/portable Linux build (`musl`) where one exists.
- Provide a `checksum-file` / `checksum-url` whenever upstream ships checksums.
- Keep `version-pattern` only when tags need stripping; omit it when tags are bare
  semver.

## Setup

With [direnv](https://direnv.net) installed, `direnv allow` once and entering the repo
auto-runs `proto use` and puts the pinned tools on PATH. Otherwise run `proto install`
by hand.

## Local checks

Hooks run via [prek](https://github.com/j178/prek) (a pre-commit-compatible runner)
and are the same checks CI runs. taplo is invoked through proto, so its version comes
from `.prototools`, not a hook-managed copy.

```sh
proto run prek -- install              # optional: enable git hooks
proto run prek -- run --all-files      # file hygiene, typos, taplo format + lint
./scripts/smoke-test.sh                # every pinned tool resolves to a runnable binary
```

## Notes

- GitHub Action versions are pinned to tags to match the ecosystem norm. Pinning to a
  commit SHA is the hardened alternative if supply-chain strictness is required.
