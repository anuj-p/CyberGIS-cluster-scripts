#!/bin/bash

# POST-PROCESSING
cd /compute_shared/job_files
bash postprocess.sh
# CLEANUP
rm -rf /compute_shared/job_files
