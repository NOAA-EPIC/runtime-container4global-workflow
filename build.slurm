#!/bin/bash
SBATCH --job-name=compile
#SBATCH --account=Wei.Huang
#SBATCH --qos=batch
#SBATCH --partition=process
#SBATCH -t 06:30:00
#SBATCH --nodes=1-1
#SBATCH --tasks-per-node=24
#SBATCH --cpus-per-task=1
#SBATCH -o compile.%J.log
#SBATCH --exclusive

 mkdir -p /lustre/$USER/cache
 mkdir -p /lustre/$USER/tmp

 export SINGULARITY_CACHEDIR=/contrib/$USER/cache
 export SINGULARITY_TMPDIR=/contrib/$USER/tmp
 export MY_LUSTRE_TMP=/contrib/$USER/singularity-builds
 export SINGULARITY_TMPDIR=$MY_LUSTRE_TMP
 export APPTAINER_TMPDIR=$MY_LUSTRE_TMP

 mkdir -p $MY_LUSTRE_TMP
 mkdir -p $SINGULARITY_CACHEDIR
 mkdir -p $SINGULARITY_TMPDIR

 cd /contrib/Wei.Huang/runtime-container4global-workflow

#sudo singularity build intel-runtime-2024.2.sif intel-runtime.def
#sudo singularity build intel-hpc-2024.2-mpi-2021.13.sif intel-hpc.def
#sudo singularity build gw-runtime.sif gw-runtime.def

#Build a sandbox
#sudo singularity build --sandbox gw-runtime gw-runtime.sif

#convert sandbox to SIF
#sudo singularity build new_gw-runtime.sif gw-runtime

 sudo singularity build intel-hpc-2024.2-mpi-2021.13-ss192.sif runtime-ss192.def
