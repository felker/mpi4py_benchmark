#!/bin/bash
#SBATCH -N 2
#SBATCH --ntasks-per-node=1
#SBATCH -t 00:30:00

module load anaconda3
module load intel-mpi/gcc/2018.3/64
conda activate mpi4py

srun python osu_bw.py
