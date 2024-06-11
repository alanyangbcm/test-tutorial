#!/bin/bash
#SBATCH --job-name=bismark_410
#SBATCH --mail-user=u255087@bcm.edu
#SBATCH --mail-type=END,FAIL
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=64G
#SBATCH --time=24:00:00
#SBATCH --output=bismark_410_out.txt
#SBATCH --error=bismark_410_err.txt

GENOME_DIR="/project/waterland/alan/test_project/data/Genomes"
OUTPUT_DIR="/project/waterland/alan/test_project/data/Bismark_Output"

bismark --genome $GENOME_DIR --p 8 -1 SRR771410_1_val_1.fq -2 SRR771410_2_val_2.fq -o $OUTPUT_DIR