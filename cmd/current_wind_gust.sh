#! /usr/bin/env nix-shell
#! nix-shell --pure --keep XDG_RUNTIME_DIR -i dash -I channel:nixos-23.11-small -p nix dash curl cacert jq bc flock
set -eu

dash ./openweathermap_get.sh \
  | jq -r '.wind.gust' \
  | { read -r x; printf %.0f "$x"; }
