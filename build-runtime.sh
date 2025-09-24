#!/bin/bash

 mkdir -p /lustre/$USER/cache
 mkdir -p /lustre/$USER/tmp

 export SINGULARITY_CACHEDIR=/lustre/$USER/cache
 export SINGULARITY_TMPDIR=/lustre/$USER/tmp

 export MY_LUSTRE_TMP=/lustre/$USER/singularity-builds
 mkdir -p $MY_LUSTRE_TMP

 export SINGULARITY_TMPDIR=$MY_LUSTRE_TMP
 export APPTAINER_TMPDIR=$MY_LUSTRE_TMP



#sudo singularity build intel-runtime-2024.2.sif intel-runtime.def
#sudo singularity build intel-hpc-2024.2-mpi-2021.13.sif intel-hpc.def
#sudo singularity build gw-runtime.sif gw-runtime.def

#Build a sandbox
#sudo singularity build --sandbox gw-runtime gw-runtime.sif

#convert sandbox to SIF
#sudo singularity build new_gw-runtime.sif gw-runtime

 sudo singularity build intel-hpc-2024.2-mpi-2021.13-ss192.sif runtime-ss192.def
