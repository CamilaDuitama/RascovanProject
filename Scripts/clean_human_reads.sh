#!/bin/bash
#SBATCH --cpus-per-task=20
#SBATCH --mem=800G
#SBATCH --j= clean_human_reads
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

while read -r line ;do
	accession=${line}
	if [ -f $3$accession"_2.fastq.gz" ]; then
		bowtie2 --threads 20 -x $2 -U $3$accession"_2.fastq.gz" |samtools view -b -S -f 4 - | samtools fastq - | gzip --stdout > $4$accession"_2.fastq.gz"
		bowtie2 --threads 20 -x $2 -U $3$accession"_1.fastq.gz" | samtools view -b -S -f 4 - | samtools fastq - | gzip --stdout > $4$accession"_1.fastq.gz"

        else
		bowtie2 --threads 20 -x $2 -U $3$accession".fastq.gz" |samtools view -b -S -f 4 - | samtools fastq - | gzip --stdout > $4$accession".fastq.gz"
	fi
done<$1

