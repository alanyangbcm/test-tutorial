#!/bin/bash
#SBATCH --job-name=bismark_408
#SBATCH --mail-user=u255087@bcm.edu
#SBATCH --mail-type=END,FAIL
#SBATCH --nodes=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=64G
#SBATCH --time=24:00:00
#SBATCH --output=bismark_408_out.txt
#SBATCH --error=bismark_408_err.txt

GENOME_DIR="/project/waterland/alan/test_project/data/Genomes"
OUTPUT_DIR="/project/waterland/alan/test_project/data/Bismark_Output"

bismark --genome $GENOME_DIR --p 8 -1 SRR771408_1_val_1.fq -2 SRR771408_2_val_2.fq -o $OUTPUT_DIR