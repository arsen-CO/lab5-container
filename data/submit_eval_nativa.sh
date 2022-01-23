#!/bin/bash
#
#SBATCH --chdir=/home/alumno25
#SBATCH -p hpc-bio-lejeune
#SBATCH -J Lab5
#SBATCH -o RESULTADOS.txt

echo "La generacion de todos los posibles 13-mers en Python ha llevado:"
time ./k-mer13.py

echo "La generacion de todos los posibles 14-mers en Python ha llevado:"
time ./k-mer14.py

echo "La generacion de todos los posibles 13-mers en C++ ha llevado: "
time ./k-mer13

echo "La generacion de todos los posibles 14-mers en C++ ha llevado: "
time ./k-mer14

