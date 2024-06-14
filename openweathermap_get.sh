#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY --keep XDG_RUNTIME_DIR -i dash -I channel:nixos-23.11-small -p nix dash curl cacert flock
set -eu

. ./openweathermap_env.sh

./curl_cached.sh "https://api.openweathermap.org/data/2.5/weather?lat=$OPENWEATHERMAP_LAT&lon=$OPENWEATHERMAP_LON&units=metric&appid=$OPENWEATHERMAP_APIKEY"
