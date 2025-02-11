#! /usr/bin/env nix-shell
#! nix-shell --pure --keep CREDENTIALS_DIRECTORY --keep BKT_SCOPE --keep BKT_CACHE_DIR
#! nix-shell -i dash -I channel:nixos-24.11-small -p nix dash curl cacert flock bkt
set -eu

. ./openweathermap_env.sh

bkt --discard-failures --ttl 60s --stale 50s -- curl --no-progress-meter -L "https://api.openweathermap.org/data/2.5/weather?lat=$OPENWEATHERMAP_LAT&lon=$OPENWEATHERMAP_LON&units=metric&appid=$OPENWEATHERMAP_APIKEY"
