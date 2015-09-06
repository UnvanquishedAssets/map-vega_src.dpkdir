#!/bin/sh
#
# bash script to generate a release pk3 for the Vega map
#

# manual actions before packing the map:
# - update map-vega.txt
# - update levelshot
# - update minimap

# tool check

OPUSENC=`which opusenc`
if [ -z "${OPUSENC}" ]
then
	echo "ERROR: opusenc not found"
	exit 1
fi

CONVERT=`which convert`
if [ -z "${CONVERT}" ]
then
	echo "ERROR: convert (ImageMagick) not found"
	exit 1
fi

CRUNCH=`which crunch`
if [ -z "${CRUNCH}" ]
then
	echo "ERROR: cruncg (DXTn Texture Compressor) not found"
fi

# create output directories
mkdir -p release/map

mkdir release/map/about
mkdir release/map/maps
mkdir release/map/minimaps
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
cp maps/vega-*.navMesh release/map/maps/

# minimaps/
cp minimaps/vega.minimap release/map/minimaps
cp minimaps/vega*.png release/map/minimaps

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

# DEPS
echo "tex-common" > release/map/DEPS
echo "tex-vega" >> release/map/DEPS

# enter output directory
cd release/map

# compress audio
cd sound/vega

for file in *.wav
do
	if [ -f ${file} ]
	then
		echo "Encoding ${file%.wav}.opus ..."
		${OPUSENC} ${file} ${file%.wav}.opus && rm ${file}
	fi
done

cd ../..

# compress minimap images

cd minimaps/

for file in vega*.png
do
	if [ -f ${file} ]
	then
		echo "Crunching ${file%.png}.crn ..."
		${CRUNCH} -quality 255 ${file%} -out ${file%.png}.crn && rm ${file}
	fi
done

cd ..
# compress textures
cd textures/vega_custom_src


# convert preview textures
for file in *_p.png; do
	if [ -f ${file} ]; then
		echo "Converting ${file%.png}.jpg ..."
		convert -quality 80 ${file} ${file%.png}.jpg && rm ${file}
	fi
done

# crunch normal map textures
for file in *_n.png
do
	if [ -f ${file} ]
	then
		echo "Crunching ${file%.png}.crn ..."
		convert -alpha deactivate ${file} ${file%.png}.tga
		${CRUNCH} -quality 255 -dxn -renormalize ${file%.png}.tga -out ${file%.png}.crn && rm ${file}
		rm ${file%.png}.tga
	fi
done
	
# crunch blend map textures
for file in *_b.png
do
	if [ -f ${file} ]
	then
		echo "Crunching ${file%.png}.crn ..."
		${CRUNCH} -quality 255 ${file%} -out ${file%.png}.crn && rm ${file}
	fi
done

# crunch other textures
for file in *_d.png *_a.png *_s.png
do
	if [ -f ${file} ]
	then
		echo "Crunching ${file%.png}.crn ..."
		convert -alpha deactivate ${file} ${file%.png}.tga
		${CRUNCH} -quality 255 ${file%.png}.tga -out ${file%.png}.crn && rm ${file}
		rm ${file%.png}.tga
	fi
done


cd ../..

# create pk3
TIMESTAMP=`date +"%Y%d%d%H%M"`
zip -qr "../map-vega_t${TIMESTAMP}.pk3" *

cd ../..

