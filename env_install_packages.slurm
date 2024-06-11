#!/bin/bash
#SBATCH --job-name=conda_env_setup
#SBATCH --mail-user=u255087@bcm.edu
#SBATCH --mail-type=END,FAIL
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4G
#SBATCH --time=24:00:00
#SBATCH --output=output_env_download_package.txt
#SBATCH --error=error_env_download_package.txt

# Activate the environment
echo "Activating Conda environment..."
source activate myenv

# Verify the environment is activated
echo "Current Conda environment:"
conda info --envs

# Add the Bioconda and Conda-Forge channels
echo "Adding channels..."
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge

# Install the required tools
echo "Installing tools..."
conda install -y sra-tools bismark fastqc trim-galore bowtie2 cutadapt

echo "Environment setup complete and tools installed."