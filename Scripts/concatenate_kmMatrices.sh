#!/bin/bash
#SBATCH --cpus-per-task=20
#SBATCH --mem=400G
#SBATCH --j= run_kmtricks
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

ls $1storage/matrix/partition_*/ascii_matrix*| xargs -I{} tail -n+9 {} >> $2
