#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY --keep BKT_SCOPE --keep BKT_CACHE_DIR
#! nix-shell -i dash -I channel:nixos-24.11-small -p nix dash curl cacert jq bc flock bkt
set -eu

dash ./openweathermap_get.sh \
  | jq -r '.main.humidity'
