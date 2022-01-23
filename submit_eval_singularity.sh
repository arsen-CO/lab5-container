#!/bin/bash
#
#SBATCH --chdir=/home/alumno25
#SBATCH -p hpc-bio-lejeune
#SBATCH -J Lab5
#SBATCH -o RESULTADOSsingularity.txt

module load singularity
echo "Evaluacion usando imagen de Singualirity"
echo -e "\n\n--------------------------"
echo "La generacion de todos los posibles 13-mers en Python ha llevado:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer13.py>/dev/null
echo -e "\n-------------------------------------------"
echo "La generacion de todos los posibles 14-mers en Python ha llevado:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer14.py>/dev/null
echo -e "\n-------------------------------------------"
echo "La generacion de todos los posibles 13-mers en C++ ha llevado: "
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer13>/dev/null
echo -e "\n-------------------------------------------"
echo "La generacion de todos los posibles 14-mers en C++ ha llevado: "
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer14>/dev/null

exit
