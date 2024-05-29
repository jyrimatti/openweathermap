#! /usr/bin/env nix-shell
#! nix-shell --pure --keep LD_LIBRARY_PATH -i dash -I channel:nixos-23.11-small -p dash curl cacert
set -eu

location="$1"

curl --no-progress-meter "http://api.openweathermap.org/geo/1.0/direct?q=$location&limit=1&appid=$(cat .openweathermap-apikey)"
