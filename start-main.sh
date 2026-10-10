#!/bin/bash
# run 9router built from the official source repo (decolua/9router).
set -x
export PORT=20127 HOSTNAME=0.0.0.0 DATA_DIR=/home/zerops/.9router \
  NEXT_PUBLIC_BASE_URL="http://127.0.0.1:20127" INITIAL_PASSWORD=123456 \
  REQUIRE_API_KEY=true \
  NODE_OPTIONS="--max-old-space-size=512" \
  NEXT_TELEMETRY_DISABLED=1
exec npm run start -- --port 20127
