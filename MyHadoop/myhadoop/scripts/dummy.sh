#!/bin/bash
src="$2"
dst="$3"

echo "copying $src to $dst/$1"
cp $src "$dst/$1"
