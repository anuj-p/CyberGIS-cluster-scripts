#!/bin/bash

sbatch --ntasks=$NTASKS --cpus-per-task=$CPUS_PER_TASK --output=/compute_shared/output/job-%j.out --wait /home/ubuntu/job_exec.sh
bash /home/ubuntu/job_cleanup.sh
