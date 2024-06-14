#!/bin/sh

export OPENWEATHERMAP_LAT="$(cat "${CREDENTIALS_DIRECTORY:-.}/.openweathermap-lat")"
export OPENWEATHERMAP_LON="$(cat "${CREDENTIALS_DIRECTORY:-.}/.openweathermap-lon")"
export OPENWEATHERMAP_APIKEY="$(cat "${CREDENTIALS_DIRECTORY:-.}/.openweathermap-apikey")"