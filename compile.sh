#!/bin/sh

# simple script to compile Unvanquished .map files with q3map2
# ingar@osirion.org
# Last changes: 2015-08-01

# For more information check
# http://en.wikibooks.org/wiki/Q3Map2

# CONFIGURATION -----------------------

homedir=".unvanquished"
mapdir="${HOME}/${homedir}/main/maps"
gamedir="/opt/games/unvanquished"
q3map2bin="/opt/games/netradiant/q3map2.x86_64"

defaultmap="vega"

# -------------------------------------

if [ "$1" = "-f" ] || [ "$1" = "--final" ]; then
	final="true"
	shift
fi

mapname="$1"
if [ -z "${mapname}" ];  then
	mapname="${defaultmap}"
fi

map="${mapdir}/${mapname}.map"

if [ -z "${mapname}" ]; then
	echo "usage: $0 [-f|--final] mapname"
	exit 1
fi

if [ ! -f "${map}" ]; then
	echo "file ${map} not found."
	exit 1
fi

q3map="${q3map2bin} -v -game tremulous -fs_homebase "${homedir}" -fs_basepath "${gamedir}" -fs_game main"

if [ "${final}" = "true" ]; then
	echo "------- COMPILING WITH FINAL SETTINGS ----"
	# options for final compile
	bspoptions="-nosRGB -samplesize 8"
	visoptions="-hint"
	#lightoptions="-fast -shade -dirty -patchshadows -samples 3 -bounce 8 -bouncegrid -cpma"
	
	lightoptions="-nocollapse -nosRGB -deluxe -fast -shade -dirty -patchshadows -samples 3 -samplesize 8 -bounce 8 -bouncegrid -lightmapsize 1024 -external"
	# unused light options
	# -randomsamples -lightmapsearchpower 3

else
	echo "------- COMPILING WITH TEST SETTINGS ----"
	# options for test compile
	bspoptions="-samplesize 16"
	visoptions="-hint"
	lightoptions="-faster -samples 2 -patchshadows -lightmapsize 1024 -deluxe"	
fi

echo "------- ${map}"

starttime=`date`
mapname=`basename "${map}"`
echo "q3map2 -leaktest ${bspoptions} -meta ${mapname}"
echo "q3map2 -vis -saveprt ${visoptions} ${mapname}"
echo "q3map2 -light ${lightoptions} ${mapname}"
echo ""

echo "------- BSP ------------------------------"
${q3map} -leaktest -custinfoparms ${bspoptions} -meta "${map}"
#${q3map} -leaktest ${bspoptions} -meta "${map}"

if [ ! "$?" = "0" ]; then
	exit 1;
fi

echo "------- VIS ------------------------------"
${q3map} -vis -saveprt "${map}"

echo "------- LIGHT ----------------------------"
# -scale 1.1
${q3map} -light ${lightoptions} "${map}"

echo "------- SUMMARY --------------------------"
mapname=`basename "${map}"`
echo "Started: ${starttime}"
echo "q3map2 -leaktest ${bspoptions} -meta ${mapname}"
echo "q3map2 -vis -saveprt ${visoptions} ${mapname}"
echo "q3map2 -light ${lightoptions} ${mapname}"
echo -n "Finished "
date
echo "------- DONE ----------------------------"

