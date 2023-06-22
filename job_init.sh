#!/bin/bash

# GET JOB FILES
git clone $JOB_FILES_URL /compute_shared/job_files
# PRE-PROCESSING
cd /compute_shared/job_files
bash preprocess.sh
