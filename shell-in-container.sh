#!/bin/bash

set -x

sif=ubuntu22.04-intel-ufs-env-v1.9.2.img

img=/contrib/containers/${sif}
bindings="-B /contrib"

singularity shell -e ${bindings} "${img}"

