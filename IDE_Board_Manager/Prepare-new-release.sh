#!/bin/bash 
# This bash script is used to prepare the "package_prusa3d_index.json"
# 
# Supported OS: Windows 10, Linux64 bit
# Beta OS: Linux32 bit
#
# 30, jul 2019, 3d-gussner, Read version from "prusa3dboards.version" file. It reads the 1st line


# Get version from prusa3dboards.version file
VERSION=$(head -1 prusa3dboards.version|cut -d ' ' -f1)
echo "Version   :"$VERSION" to build"

# rename temporaray "prusa3dboards" folder to include version number
mv prusa3dboards prusa3dboards-$VERSION
# compress prusa3dboards-$VERSION folder
tar -cjf prusa3dboards-$VERSION.tar.bz2 prusa3dboards-$VERSION
# rename prusa3dboards-$VERSION back to prusa3dboards as it makes follow changes easier in Github, cimmits/blame/history
mv prusa3dboards-$VERSION prusa3dboards
# get size of the compressed file for JSO
SIZE=$(wc -c prusa3dboards-$VERSION.tar.bz2|cut -d ' ' -f1)
echo "Size     :"$SIZE" to be used in JSON"

#get sha256 checksum
SHA256=$(sha256sum prusa3dboards-$VERSION.tar.bz2|cut -d ' ' -f1)
echo "SHA256 checksum:"$SHA256" to be used in JSON"
