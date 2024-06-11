#!/bin/bash
#SBATCH --job-name=trim_galore_771409-412_test
#SBATCH --mail-user=u255087@bcm.edu
#SBATCH --mail-type=END,FAIL
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=16G
#SBATCH --time=24:00:00
#SBATCH --output=/project/waterland/alan/test_project/data/trim_galore_771409-412_out.txt
#SBATCH --error=/project/waterland/alan/test_project/data/trim_galore_771409-412_err.txt

trim_galore --paired --fastqc SRR771409_1.fastq SRR771409_2.fastq
trim_galore --paired --fastqc SRR771410_1.fastq SRR771410_2.fastq
trim_galore --paired --fastqc SRR771411_1.fastq SRR771411_2.fastq
trim_galore --paired --fastqc SRR771412_1.fastq SRR771412_2.fastq