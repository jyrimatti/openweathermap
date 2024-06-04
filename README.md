# Homekit.sh plugin for Open Weather Map

Prerequisites
-------------
- get a computer (e.g. a server or a Raspberry Pi)
- install [Nix](https://nixos.org/download/)
- install [Homekit.sh](https://github.com/jyrimatti/homekit.sh)

Setup for home automation
-------------------------

```
cd ~/.config/homekit.sh/accessories
```

Clone this repo
```
git clone https://github.com/jyrimatti/openweathermap.git
cd openweathermap
```

Store Open Weather Map credentials and location
```
echo '<my API key>' > .openweathermap-apikey
echo '<my location lon>' > .openweathermap-lon
echo '<my location lat>' > .openweathermap-lat
chmod go-rwx .openweathermap*
```

You can use ./cmd/geocode.sh to find lon/lat of your location.
