#!/bin/bash
# Slurm job options (name, compute nodes, job time)
#SBATCH --job-name=percolate
#SBATCH --time=1:30:0
#SBATCH --exclusive
#SBATCH --nodes=1
#SBATCH --tasks-per-node=36
#SBATCH --cpus-per-task=1
# Replace dc116-s2133934 below with your budget code (e.g. t01)
#SBATCH --account=dc116-s2133934
# We use the "standard" partition as we are running on CPU nodes
#SBATCH --partition=standard
# We use the "standard" QoS as our runtime is less than 4 days
#SBATCH --qos=standard
# Change to the submission directory
cd $SLURM_SUBMIT_DIR
module load gcc
bash run_pipeline.sh
