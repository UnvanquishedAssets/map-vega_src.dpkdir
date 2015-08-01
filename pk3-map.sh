#!/bin/sh

# bash script to generate a release pk3 for the Vega map

# output directory
mkdir -p release/map

mkdir release/map/about
mkdir release/map/maps
mkdir -p release/map/meta/vega
mkdir release/map/models
mkdir release/map/scripts
mkdir release/map/sound
mkdir release/map/textures

# about/
cp about/map-vega.txt release/map/about/

# maps/
cp maps/vega.bsp release/map/maps/
cp maps/vega.map release/map/maps/
cp -r maps/vega release/map/maps/

# meta/
cp meta/vega/vega.arena release/map/meta/vega/
cp meta/vega/vega.jpg release/map/meta/vega/

# models/
cp -r models/mapobjects release/map/models/

# scripts/
cp scripts/shaderlist.txt release/map/scripts/
cp scripts/vega_custom.particle release/map/scripts/
cp scripts/vega_custom.shader release/map/scripts/
cp scripts/vega_models.shader release/map/scripts/

# sound/
cp -r sound/vega release/map/sound/

# textures/
cp -r textures/vega_custom_src release/map/textures
# TODO crunch png files

# DEPS
echo "tex-common" > release/map/DEPS
echo "tex-vega" >> release/map/DEPS

# pk3
cd release/map

TIMESTAMP=`date +"%Y%d%d%H%M"`
zip -r "../map-vega_t${TIMESTAMP}.pk3" *

cd ../..

