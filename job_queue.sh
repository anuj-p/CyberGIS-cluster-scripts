#!/bin/bash

sbatch --ntasks=$NTASKS --cpus-per-task=$CPUS_PER_TASK --output=/compute_shared/output/job-%j.out /home/ubuntu/job_exec.sh
