#!/bin/bash
#SBATCH --job-name=conda_env_setup
#SBATCH --mail-user=u255087@bcm.edu
#SBATCH --mail-type=END,FAIL
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4G
#SBATCH --time=24:00:00
#SBATCH --output=conda_env_setup.txt
#SBATCH --error=conda_env_setup.txt

# Print the hostname and date for debugging
hostname
date

# Verify that Conda is available
echo "Checking Conda version..."
conda --version

# Create a new Conda environment with Python 3.7
echo "Creating Conda environment..."
conda create -n myenv python=3.7

# Check if the environment was created
echo "Listing environments..."
conda env list
