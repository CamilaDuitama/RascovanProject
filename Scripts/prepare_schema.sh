#!/bin/bash
#SBATCH --cpus-per-task=10
#SBATCH --mem=200G
#SBATCH --j= run_kmtricks
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

cat $1 | sed 's/ /:INT,/g'| tr -d '\n'>>$2
echo -n ":INT">>$2
