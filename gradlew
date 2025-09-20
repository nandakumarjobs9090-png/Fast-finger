#!/usr/bin/env sh
DIR="$(cd "$(dirname "$0")" && pwd)"
if command -v gradle >/dev/null 2>&1; then
  exec gradle "$@"
fi
echo "No system Gradle found. On CI we install Gradle; on-device use AIDE or install Gradle manually."
exit 1
