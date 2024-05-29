#! /usr/bin/env nix-shell
#! nix-shell --pure --keep LD_LIBRARY_PATH --keep XDG_RUNTIME_DIR -i dash -I channel:nixos-23.11-small -p nix dash curl cacert flock
set -eu

lat="$(cat .openweathermap-lat)"
lon="$(cat .openweathermap-lon)"
./curl_cached.sh "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&units=metric&appid=$(cat .openweathermap-apikey)"
