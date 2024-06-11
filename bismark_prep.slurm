#!/bin/bash
#SBATCH --job-name=bismark_prep_test
#SBATCH --mail-user=u255087@bcm.edu
#SBATCH --mail-type=END,FAIL
#SBATCH --nodes=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=16G
#SBATCH --time=24:00:00
#SBATCH --output=bismark_prep_out.txt
#SBATCH --error=bismark_prep_err.txt

bismark_genome_preparation --parallel 4 /project/waterland/alan/test_project/data/Genomes

status=$?

# Check if Bismark command failed
if [ $status -ne 0 ]; then
    echo "Bismark genome preparation failed with exit code $status" >> bismark_prep_err.txt
    echo "Check the following error details:" >> bismark_prep_err.txt
    cat bismark_prep_temp_err.txt >> bismark_prep_err.txt
else
    # If successful, remove the temporary error file
    rm bismark_prep_temp_err.txt
fi