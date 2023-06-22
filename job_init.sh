#!/bin/bash

# GET JOB FILES
git clone $JOB_FILES_URL /compute_shared/job_files
chmod +x /compute_shared/job_files/preprocess.sh
chmod +x /compute_shared/job_files/job.sh
chmod +x /compute_shared/job_files/postprocess.sh
# PRE-PROCESSING
cd /compute_shared/job_files
bash preprocess.sh
