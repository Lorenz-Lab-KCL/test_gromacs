#!/bin/bash -l                                                                                                                                                                          
#$ -S /bin/bash                                                                                                                                                                         
#$ -l h_rt=01:00:00                                                                                                                                                                     
#$ -l mem=4.5G                                                                                                                                                                          
#$ -N single_it1b                                                                                                                                                                       
#$ -pe mpi 80  
#$ -A KCL_Admin_rse                                                                                                                                                                     
#$ -cwd                                                                                                                                                                                 

module purge
module load beta-modules
module load gerun
module load gcc-libs/7.3.0
module load compilers/intel/2020/release
module load mpi/intel/2019/update6/intel
module load gromacs/2020.4/intel-2020
gerun mdrun_mpi -v -deffnm min
