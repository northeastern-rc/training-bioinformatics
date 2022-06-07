#!/bin/bash

#####Use after training##############
##SBATCH -p short
#####################################

#####Use during training#############
#SBATCH --partition=reservation
#SBATCH --reservation=bootcamp_cpu_2022
#####################################

#####Use during &after training######
#SBATCH --nodes 1
#SBATCH --cpus-per-task=8
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

# Run Samtools with 8 CPUs specified using "@"
echo "Running samtools with 8 cpus.."
samtools merge merged_n8.bam -b ${BAMLIST} -@8
