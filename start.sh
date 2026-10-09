#!/bin/bash
# standalone 9router service for Zerops (nodejs, non-root).
set -x
export PATH="$HOME/.local/bin:$PATH"
if ! command -v 9router >/dev/null 2>&1; then
  npm install --prefix "$HOME/.local" -g 9router || true
fi
export PORT=20128 HOSTNAME=0.0.0.0 DATA_DIR=/home/zerops/.9router \
  NEXT_PUBLIC_BASE_URL="http://127.0.0.1:20128" INITIAL_PASSWORD=123456 \
  REQUIRE_API_KEY=true \
  NODE_OPTIONS="--max-old-space-size=96" \
  NEXT_TELEMETRY_DISABLED=1
exec 9router --no-browser --port 20128
