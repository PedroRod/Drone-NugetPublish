#!/bin/sh

RandomString () {
	cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w ${1:-7} | head -n 1
}

SUFFIX=`RandomString`

dotnet pack -c Release -o nupkgs --version-suffix ${SUFFIX}


