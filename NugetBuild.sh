#!/bin/sh
SUFFIX=`date +"%y-%j-%H%M%S"`

dotnet pack -c Release -o nupkgs -p:VersionSuffix=${SUFFIX}
