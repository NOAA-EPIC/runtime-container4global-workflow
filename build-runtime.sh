#!/bin/bash

 mkdir -p /lustre/$USER/cache
 mkdir -p /lustre/$USER/tmp

 export SINGULARITY_CACHEDIR=/lustre/$USER/cache
 export SINGULARITY_TMPDIR=/lustre/$USER/tmp

 sudo singularity build intel-runtime-2024.2.sif intel-runtime.def
 sudo singularity build intel-hpc-2024.2-mpi-2021.13.sif intel-hpc.def
 sudo singularity build gw-runtime.sif gw-runtime.def

