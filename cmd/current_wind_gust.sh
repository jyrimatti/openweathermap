#! /usr/bin/env nix-shell
#! nix-shell --pure -i dash -I channel:nixos-23.05-small -p dash curl cacert jq
set -eu

lat=$(cat .openweathermap-lat)
lon=$(cat .openweathermap-lon)
curl -s "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&units=metric&appid=$(cat .openweathermap-apikey)"\
  | jq -r '.wind.gust'
