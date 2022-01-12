#/usr/bin/sh
km_dir=$(pwd)"/config"
echo $km_dir
rm -rf "/home/adam/dev/zmk/app/build/*"
rm left.uf2 right.uf2
cd /home/adam/dev/zmk/app
west build -d build/left-mini -b nice_nano_v2 -- -DSHIELD=dactyl_left -DZMK_CONFIG="$km_dir"
west build -d build/right-mini -b nice_nano_v2 -- -DSHIELD=dactyl_right -DZMK_CONFIG="$km_dir"
cp ~/dev/zmk/app/build/left-mini/zephyr/zmk.uf2 left.uf2
cp ~/dev/zmk/app/build/right-mini/zephyr/zmk.uf2 right.uf2
