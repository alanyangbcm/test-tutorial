#!/bin/bash
#SBATCH --job-name=fastqc_files
#SBATCH --mail-user=u255087@bcm.edu
#SBATCH --mail-type=END,FAIL
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=24G
#SBATCH --time=24:00:00
#SBATCH --output=fastqc_files_out.txt
#SBATCH --error=fastqc_files_err.txt

fastqc SRR771402_1.fastq SRR771402_2.fastq SRR771402_1.fastq SRR771402_2.fastq 