#!/bin/bash

cd /compute_shared
git clone $JOB_SCRIPT_URL .
sbatch --ntasks=$NTASKS --cpus-per-task=$CPUS_PER_TASK job.sh
