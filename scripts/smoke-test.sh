#!/usr/bin/env bash
# Assert every tool pinned in .prototools resolves to a runnable binary. proto
# install unpacks but does not follow exe-path, so a wrong exe-path leaves a
# dangling target that install still reports as success; proto bin catches it.
set -euo pipefail

cd "$(dirname "$0")/.."

# Without this proto emits NDJSON in an AI-agent environment, wrapping bin paths.
export PROTO_REPORTER=text

# tr strips the \r taplo's jq output carries under Git Bash on Windows.
tools="$(proto run taplo -- get -f .prototools -o json 'plugins' | jq -r 'keys[]' | tr -d '\r')"

if [ -z "$tools" ]; then
  echo "no tools found in [plugins] table of .prototools" >&2
  exit 1
fi

failed=0
for tool in $tools; do
  # || true: proto bin exits non-zero when exe-path is unresolvable.
  bin="$(proto bin "$tool" 2>/dev/null | tr -d '\r')" || true
  # -f rejects a directory (exe-path pointing into a nested archive); -x rejects
  # a non-executable. Both follow symlinks, so proto's shims pass.
  if [ -n "$bin" ] && [ -f "$bin" ] && [ -x "$bin" ]; then
    echo "ok   $tool"
  else
    echo "FAIL $tool: no runnable executable (check exe-path)"
    failed=1
  fi
done

exit "$failed"
