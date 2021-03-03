#!/bin/bash
#SBATCH --cpus-per-task=20
#SBATCH --mem=200G
#SBATCH --j= run_kmtricks
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
kmtricks.py -v run --file $1 --run-dir $2 --count-abundance-min $3 --mode $4 --recurrence-min $5


