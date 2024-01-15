#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.11-small -p dash curl cacert
set -eu

location="$1"

curl -s "http://api.openweathermap.org/geo/1.0/direct?q=$location&limit=1&appid=$(cat .openweathermap-apikey)"
