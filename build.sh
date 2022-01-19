#/usr/bin/sh
cfg=$(pwd)/config
rm -rf "/home/adam/dev/zmk/app/build/*"
cd /home/adam/dev/zmk/app

west build -d build/$1 -b nice_nano_v2 -- -DSHIELD=storm_$1 -DZMK_CONFIG="$cfg"

#cp /home/adam/dev/zmk/app/build/$1/zephyr/zmk.uf2 /run/media/adam/NICENANO
#echo "copying /home/adam/dev/zmk/app/build/$1/zephyr/zmk.uf2 /run/media/adam/NICENANO"
#echo "built from $cfg"

