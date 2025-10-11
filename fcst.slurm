#! /bin/sh
#SBATCH --job-name=C48_S2SW_gfs_fcst_seg0_12
#SBATCH --account=Wei.Huang
#SBATCH --qos=batch
#SBATCH --partition=compute
#SBATCH -t 03:00:00
#SBATCH --nodes=2-2
#SBATCH --tasks-per-node=48
#SBATCH --cpus-per-task=1
#SBATCH -o /lustre/Wei.Huang/run/COMROOT/C48_S2SW/logs/2021032312/gfs_fcst_seg0.log
#SBATCH --exclusive
#SBATCH --comment=da260cf5f2a5b7f3ec387630917d20b6
export RUN_ENVIR='emc'
export HOMEgfs='/contrib/Wei.Huang/runtime-container4global-workflow/global-workflow-cloud'
export EXPDIR='/lustre/Wei.Huang/run/EXPDIR/C48_S2SW'
export NET='gfs'
export RUN='gfs'
export CDATE='2021032312'
export PDY='20210323'
export cyc='12'
export COMROOT='/lustre/Wei.Huang/run/COMROOT'
export DATAROOT='/lustre/Wei.Huang/stmp/RUNDIRS/C48_S2SW/gfs.2021032312'
export FCST_SEGMENT='0'
/contrib/Wei.Huang/runtime-container4global-workflow/global-workflow-cloud/dev/jobs/fcst.sh

