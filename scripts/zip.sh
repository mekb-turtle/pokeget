#!/usr/bin/env bash

# This script zips the project's source code into a tarball

rm -rf output
mkdir output

echo "Making source tarballs..."
tar cvf output/pokeget-src.tar Makefile pokeget 
tar cvf output/pokeget-src-lite.tar Makefile pokeget

echo "Making .deb package..."
rm -rf output/pokeget-deb
mkdir output/pokeget-deb
mkdir -p output/pokeget-deb/usr/bin
cp pokeget output/pokeget-deb/usr/bin

mkdir -p output/pokeget-deb/DEBIAN
touch output/pokeget-deb/DEBIAN/control
printf "Package: pokeget
Version: 1.0
Architecture: all
Maintainer: Talwat
Description: pokeget is a bash script you can use to display cool sprites of pokemon in your terminal
" >> output/pokeget-deb/DEBIAN/control

touch output/pokeget-deb/DEBIAN/postinst
printf "#!/bin/sh
chmod +x /usr/bin/pokeget
exit 0
" >> output/pokeget-deb/DEBIAN/postinst

chmod -v 775 output/pokeget-deb/DEBIAN/postinst
dpkg-deb --build --root-owner-group output/pokeget-deb