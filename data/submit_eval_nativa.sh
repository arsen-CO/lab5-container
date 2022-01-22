#!/bin/bash
#
#SBATCH --chdir=/home/alumno25
#SBATCH -p hpc-bio-lejeune
#SBATCH -J Lab5
#SBATCH -o RESULTADOS.txt
#SBATCH -t 0:30:00

time_pyth_13=$(time ./kmer13.py)
time_pyth_14=$(time ./kmer14.py)
time_c_13=$(time ./kmer13.cpp)
time_c_14=$(time ./kmer14.cpp)
echo "La generacion de todos los posibles 13-mers en Python ha llevado "$time_pyth_13" y en C++ "$time_c_13""
echo "La generacion de todos los posibles 14-mers en Python ha llevado "$time_pyth_14" y en C++ "$time_c_14""

