#!/bin/bash

cd /compute_shared
git clone $JOB_SCRIPT_URL .
sbatch --ntasks=4 --cpus-per-task=1 job.sh
