#!/bin/bash
#
#SBATCH -A Sumun
#SBATCH --nodelist=emmentaler3
#SBATCH --output="test-%j.txt"
#SBATCH --error="test-%j.log"
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=128
#SBATCH -J name_of_job

echo "-----------------------------------------------------"
echo "|    Job starting: $(date)    |"
echo "-----------------------------------------------------"
echo ""
module purge
pwd
echo ""
echo "-----------------------------------------------------"
echo "|    Job finished: $(date)    |"
echo "-----------------------------------------------------"
