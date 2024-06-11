#!/bin/bash
#SBATCH --job-name=conda
#SBATCH --mail-user=u255087@bcm.edu
#SBATCH --mail-type=END,FAIL
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=4G
#SBATCH --time=24:00:00

# Change to your desired Miniconda version
MINICONDA_VERSION="latest"

# Change to your desired Miniconda installation directory
INSTALL_DIR="$HOME/miniconda"

# Download Miniconda installer script
wget https://repo.anaconda.com/miniconda/Miniconda3-$MINICONDA_VERSION-Linux-x86_64.sh -O miniconda.sh --no-check-certificate

# Install Miniconda
bash miniconda.sh -b -p $INSTALL_DIR

# Cleanup
rm miniconda.sh

echo "Miniconda installed successfully at $INSTALL_DIR"
