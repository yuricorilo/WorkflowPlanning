#!/bin/bash
#SBATCH --qos=regular
#SBATCH --time=1800:00
#SBATCH --output=/global/project/projectdirs/m3408/aim2/metagenome/assembly/SRR2126941.log
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task 62
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=lo.chienchi@gmail.com
#SBATCH --constraint=haswell
#SBATCH --account=m3408
#SBATCH --job-name=asm_SRR2126941

#OpenMP settings:
#export OMP_NUM_THREADS=8
#export OMP_PLACES=threads
#export OMP_PROC_BIND=spread

cd /global/project/projectdirs/m3408/aim2/metagenome/assembly

java -XX:ParallelGCThreads=62 -Dconfig.file=shifter.conf -jar /global/common/software/m3408/cromwell-45.jar run -i input_SRR2126941.json  assembly_docker.wdl

