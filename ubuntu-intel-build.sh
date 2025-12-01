#!/bin/bash

 mkdir -p /lustre/$USER/cache
 mkdir -p /lustre/$USER/tmp

 export SINGULARITY_CACHEDIR=/lustre/$USER/cache
 export SINGULARITY_TMPDIR=/lustre/$USER/tmp

 export MY_LUSTRE_TMP=/lustre/$USER/singularity-builds
 mkdir -p $MY_LUSTRE_TMP

 export SINGULARITY_TMPDIR=$MY_LUSTRE_TMP
 export APPTAINER_TMPDIR=$MY_LUSTRE_TMP

 set -x

 sudo singularity build ubuntu-intel.sif ubuntu-intel.def

#singularity exec ubuntu-intel.sif bash -c 'echo $MPI_ROOT && echo $LD_LIBRARY_PATH'

#singularity exec ubuntu-intel.sif which mpiifort
# Expected output: /opt/intel/oneapi/mpi/2021.13.0/bin/mpiifort

#singularity exec ubuntu-intel.sif which mpiexec.hydra
# Expected output: /opt/intel/oneapi/mpi/2021.13.0/bin/mpiexec.hydra

#Build a sandbox
#sudo singularity build --sandbox ubuntu-intel ubuntu-intel.sif
