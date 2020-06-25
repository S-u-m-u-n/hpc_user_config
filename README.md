# HPC user config
My dotfiles for HPC clusters. They make navigating around in a terminal via ssh more comfortable.
Used in the following competitions:
* [SC19 Student Cluster Competition](https://sc19.supercomputing.org/program/studentssc/student-cluster-competition/)
* [ISC20 Student Cluster Competition](https://www.isc-hpc.com/student-cluster-competition.html)

Feel free to copy and adapt them to your own needs. 

# Cheat sheets

## System monitoring

`htop` CPU & RAM usage

`watch -n 0.5 nvidia-smi` htop for GPUs

## PBS cheat sheet
### Job scheduling

`qsub <script.sh>` Submit script

`qdel <job_id>` Cancel submitted job

### Job management

`qstat -q` List all queues

`qstat -fQ <queue>` List full information about queue

`qstat -u $USER` Show all current jobs from your user in all queues

`qpeek <job_id>` Display current contents of stdout for this job

`qpeek -f <job_id>` Display end of stdout for this job and keep listening (terminate with Ctrl+C)

### Interactive session

`qsub -I -N stdin -l nodes=1:ppn=16 -l walltime=1:00:00`

## Slurm cheat sheet
### Job scheduling

`sbatch <script.sh>` Submit script

`scancel <job_id>` Cancel submitted job

### Job management

`sinfo -a` List all queues

`squeue` List all jobs

`squeue -u $USER` Show jobs for your users

### Interactive session

`srun --pty bash`

`salloc --nodes=3 --bell` The terminal bell will notify you once allocation has been granted. Note that you need to manually connect to that allocation using `srun --jobid=<job_id> --pty /bin/bash`

## Spack cheat sheet

`spack find --loaded` Find loaded packages

`spack install <pkg>%gcc@9.2.0 +openmp` Install package, compile it with gcc 9.2.0 and enable the openmp feature

# ToDo

* Add Slurm sample submission script

* Add vim/neovim configuration

* write bash script that automatically sets up this configuration

* Add aliases for slurm / other useful things

* Add references in the README for easier navigation
