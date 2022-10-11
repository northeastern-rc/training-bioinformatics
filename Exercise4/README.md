# Nextflow demo

This exercise is adapted from https://github.com/seqeralabs/nextflow-tutorial for Northeastern University's Research Computing training session.

In order to use the pre-built environment on Discovery that has the required software installed,do:

```
srun --nodes=1 --cpus-per-task=2 --time=2:00:00 --mem=10G --pty /bin/bash
module load anaconda3/2021.11
source /shared/centos7/anaconda3/2021.11/bin/activate
conda activate rnaseq-nf-demo
```

If you would like to try building this environment on your own, you can use the `env.yml` file from https://github.com/seqeralabs/nextflow-tutorial and do:

```
conda env create --name rnaseq-nf-demo --file /path/to/nextflow-tutorial/env.yml
```

Note that you will need to update the `env.yml` file if you are using it from the seqeralabs git repo to add nextflow as well as updated version numbers for the other tools. Alternately, you can use the updated `env.yml` in the current exercise 4 folder to create the environment.

Once you have the environment loaded to your current session (using `conda activate`), you can navigate to the directory containing the `*.nf` scripts and start executing them as:

```
nextflow run script1.nf
nextflow run script2.nf
.
.
.
nextflow run script7.nf
```
