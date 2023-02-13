#!/bin/sh
set -e -u

blockMesh
touch fluid1.foam

../../tools/run-openfoam.sh "$@"
. ../../tools/openfoam-remove-empty-dirs.sh && openfoam_remove_empty_dirs
