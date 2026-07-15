#!/bin/bash
# Regenerate matplotlib README figures (schematics + results charts).
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

if ! python3 -c "import matplotlib" 2>/dev/null; then
  echo "Installing matplotlib..."
  pip install matplotlib
fi

for script in docs/images/scripts/make_*.py; do
  echo "Running $script"
  python3 "$script"
done

echo ""
echo "Done. Manual screenshots still needed — see docs/SCREENSHOTS.md"
