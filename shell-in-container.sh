#!/bin/bash

set -x

sif=intel-hpc-2024.2-mpi-2021.13-ss192

img=./${sif}
bindings="-B /contrib:/contrib"

sudo singularity shell --writable -e ${bindings} "${img}"

