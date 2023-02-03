#!/bin/bash -l
# Batch script to run an MPI parallel job on Legion with the upgraded software
# stack under SGE with Intel MPI. Updated Jan 2016.
# 1. Force bash as the executing shell.
#$ -S /bin/bash
# 2. Request one hour of wallclock time (format hours:minutes:seconds).
#$ -l h_rt=12:00:00
# 3. Request 1 gigabyte of RAM per process.
#$ -l mem=5G
# 4. Set the name of the job.
#$ -N grommacs_try
# 5. Select the MPI parallel environment and 24 processes.
#$ -pe mpi 40
# 7. Set the working directory to somewhere in your scratch space.  This is
# a necessary step with the upgraded software stack as compute nodes cannot
# write to $HOME.
# Replace "<your_UCL_id>" with your UCL user ID.
#$ -cwd
# 8. Add project code
#$ -A KCL_Lorenz
# 9. Load required module alongside default modules

module load gromacs/2018.2/intel-2018

# 10. Run our MPI job. 
gerun mdrun_mpi -v -deffnm md_0_1
