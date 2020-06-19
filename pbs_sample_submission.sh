#!/bin/bash -l
#PBS -N Jobname
#PBS -l select=4:ncpus=24:mem=48gb
#PBS -l walltime=04:00:00
#PBS -P 50000003
#PBS -o Jobname-output.o
#PBS -e Jobname-output.e

module purge
module load intel/19.0.0.117

cd $HOME/working_directory

mpirun -np 96 binary_file 100 0.1 2
