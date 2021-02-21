#!/bin/bash
#SBATCH --cpus-per-task=10
#SBATCH --mem=300G
#SBATCH --j= run_kmtricks
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

kmtricks.py -v run --file $1 --run-dir $2 --max-memory 300000 --nb-cores 10
