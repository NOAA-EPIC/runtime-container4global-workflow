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

 sudo singularity build rocky9-intel.sif rocky9-intel.def
 sudo singularity build --sandbox rocky9-intel rocky9-intel.sif

#sudo singularity build ubuntu24-oneapi-2024.2-aws.sif ubuntu24-oneapi-2024.2-aws.def
#sudo singularity build --sandbox ubuntu24-oneapi-2024.2-aws ubuntu24-oneapi-2024.2-aws.sif
