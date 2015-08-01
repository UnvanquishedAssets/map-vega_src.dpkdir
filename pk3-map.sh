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

# enter output directory
cd release/map

# compress audio
cd sound/vega

OPUSENC=`which opusenc`
if [ ! -z "${OPUSENC}" ]
then

	for file in *.wav
	do
		if [ -f ${file} ]
		then
			echo "Encoding ${file%.wav}.opus ..."
			${OPUSENC} ${file} ${file%.wav}.opus && rm ${file}
		fi
	done
else
	echo "WARNING opusenc not found"
fi

cd ../..

# compress textures
cd textures/vega_custom_src


CONVERT=`which convert`
if [ ! -z "${CONVERT}" ]; then

	# convert preview textures to JPEG
	for file in *_p.png; do
		if [ -f ${file} ]; then
			echo "Converting ${file%.png}.jpg ..."
			convert -quality 80 ${file} ${file%.png}.jpg && rm ${file}
		fi
	done
else
	echo "WARNING convert not found"
fi

CRUNCH=`which crunch`
if [ ! -z "${CRUNCH}" ]
then

	# convert normal maps
	for file in *_normal.png
	do
		if [ -f ${file} ]
		then
			echo "Crunching ${file%.png}.crn ..."
			convert -alpha deactivate ${file} ${file%.png}.tga
			${CRUNCH} -quality 255 -dxn -renormalize ${file%.png}.tga -out ${file%.png}.crn && rm ${file}
			rm ${file%.png}.tga
		fi
	done
		
	# convert blend maps
	for file in *_blend.png
	do
		if [ -f ${file} ]
		then
			echo "Crunching ${file%.png}.crn ..."
			${CRUNCH} -quality 255 ${file%} -out ${file%.png}.crn && rm ${file}
		fi
	done
	
	# convert other image maps
	for file in *_diffuse.png *_glow.png *_specular.png
	do
		if [ -f ${file} ]
		then
			echo "Crunching ${file%.png}.crn ..."
			convert -alpha deactivate ${file} ${file%.png}.tga
			${CRUNCH} -quality 255 ${file%.png}.tga -out ${file%.png}.crn && rm ${file}
			rm ${file%.png}.tga
		fi
	done
else
	echo "WARNING crunch not found"
fi

cd ../..

# pk3
TIMESTAMP=`date +"%Y%d%d%H%M"`
zip -qr "../map-vega_t${TIMESTAMP}.pk3" *

cd ../..

