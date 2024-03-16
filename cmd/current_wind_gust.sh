#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p dash curl cacert jq bc flock
set -eu

./openweathermap_get.sh\
  | jq -r '.wind.gust'\
  | { read -r x; printf %.0f "$x"; }
