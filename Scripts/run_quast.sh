#!/bin/bash
#SBATCH --cpus-per-task=10
#SBATCH --mem=300G
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

metaquast.py --threads 10 -o $2 $1
