#!/bin/bash
#SBATCH -p hpc-bio-lejeune
#SBATCH -J Lab5.sing
#SBATCH -o output_manejando_container.sh


module load singularity

echo "------------------------------------------------------------------"
echo "La version del sistema operativo de la imagen:"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif cat /etc/os-release | head -n 3 | tail -n 1
echo "-------------------------------------------------------------------"
echo "El contenido del directorio que estamos viendo"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif cat /etc/os-release
echo "-------------------------------------------------------------------"
echo "La version de Python instalada:"
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif python --version
echo "-------------------------------------------------------------------"
echo "La version del compilador de C++ que tenemos instalada:"
g++ --version | head -n 1
echo "-------------------------------------------------------------------"
echo "El tiempo de ejecucion del 13-mers compilado en C++ es :"
time ./data/k-mer13>/dev/null
