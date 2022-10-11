#!/bin/bash

#####Use after training##############
##SBATCH -p short
#####################################

#####Use during training#############
#SBATCH --partition=reservation
#SBATCH --reservation=fall2022_cpu_training
#####################################

#####Use during &after training######
#SBATCH --nodes 1
#SBATCH --cpus-per-task=2
#SBATCH -t 1:00:00
#SBATCH --mem=1G
#SBATCH -o Samtools.%N.%j.out
#SBATCH -e Samtools.%N.%j.err
#SBATCH --job-name="Samtools-merge_test"
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=s.sekar@northeastern.edu


# Load the system wide samtools module 
module load samtools

# Define the file with list of bams
BAMLIST=bamlist.txt

# Run Samtools with 2 CPUs specified using "@"
echo "Running samtools with 2 cpus.."
samtools merge merged_n2.bam -b ${BAMLIST} -@2
