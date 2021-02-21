#!/bin/bash
#BATCH --cpus-per-task=10
#SBATCH --mem=300G
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

kaiju -t /pasteur/zeus/services/p01/banques-prod/prod/rel/refseq_kaiju/refseq_kaiju_2021-1-25/kaiju/nodes.dmp -f /pasteur/zeus/services/p01/banques-prod/prod/rel/refseq_kaiju/refseq_kaiju_2021-1-25/kaiju/1.7.3/kaiju_db_refseq.fmi -i $1 -j $2 -z 10 -o /pasteur/scratch/public/cduitama/RascovanProject/OneSample/Kaiju_SRR6877325.csv -v
