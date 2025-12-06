#!/bin/bash

set -x

#sif=intel-hpc-2024.2-mpi-2021.13-ss192
sif=intel-compiler-ss192

img=./${sif}
bindings="-B /contrib -B /lustre -B /bucket"

#sudo singularity shell --writable -e ${bindings} "${img}"

sudo singularity shell --writable -e ${bindings} rocky9-intel

