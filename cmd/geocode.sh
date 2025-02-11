#! /usr/bin/env nix-shell
#! nix-shell --pure
#! nix-shell -i dash -I channel:nixos-24.11-small -p dash curl cacert
set -eu

location="$1"

. ./openweathermap_env.sh

curl --no-progress-meter "http://api.openweathermap.org/geo/1.0/direct?q=$location&limit=1&appid=$OPENWEATHERMAP_APIKEY"
