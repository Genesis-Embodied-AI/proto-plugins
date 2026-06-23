#!/usr/bin/env bash
# Assert every tool pinned in .prototools resolves to a real, runnable binary.
# proto install only downloads and unpacks; it does not follow exe-path, so a
# wrong exe-path produces a dangling symlink that install reports as success.
# `proto bin` resolves exe-path and exits non-zero when the target is missing;
# `proto run -- --version` then proves the binary actually executes.
#
# The tool list comes from the [plugins] table in .prototools (the repo's
# single source of truth), read with the pinned taplo so adding a plugin needs
# no edit here.
set -euo pipefail

cd "$(dirname "$0")/.."

tools="$(proto run taplo -- get -f .prototools -o json 'plugins' | jq -r 'keys[]')"

if [ -z "$tools" ]; then
  echo "no tools found in [plugins] table of .prototools" >&2
  exit 1
fi

failed=0
for tool in $tools; do
  if ! proto bin "$tool" >/dev/null 2>&1; then
    echo "FAIL $tool: proto could not resolve an executable (check exe-path)"
    failed=1
  elif ! proto run "$tool" -- --version >/dev/null 2>&1; then
    echo "FAIL $tool: resolved but did not run (--version exited non-zero)"
    failed=1
  else
    echo "ok   $tool"
  fi
done

exit "$failed"
