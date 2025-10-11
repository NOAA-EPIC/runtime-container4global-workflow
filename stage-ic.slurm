#! /bin/sh
#SBATCH --job-name=C48_S2SW_gfs_stage_ic_12
#SBATCH --account=Wei.Huang
#SBATCH --qos=batch
#SBATCH --partition=process
#SBATCH -t 00:15:00
#SBATCH --ntasks=1
#SBATCH -o /lustre/Wei.Huang/run/COMROOT/C48_S2SW/logs/2021032312/gfs_stage_ic.log
#SBATCH --export=NONE
#SBATCH --comment=9627df5e9dc36cd1fae9f5c945a86e31
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
/contrib/Wei.Huang/runtime-container4global-workflow/global-workflow-cloud/dev/jobs/stage_ic.sh

