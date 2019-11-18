#!/bin/bash
#SBATCH --qos=regular
#SBATCH --time=1800:00
#SBATCH --output=/global/project/projectdirs/m3408/aim2/metagenome/assembly/SRR2126941.log
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task 24
#SBATCH --constraint=knl
#SBATCH --account=m3408
#SBATCH --job-name=asm_SRR2126941

cd /global/project/projectdirs/m3408/aim2/metagenome/assembly

java -Dconfig.file=shifter.conf -jar /global/common/software/m3408/cromwell-45.jar run -i input_SRR2126941.json  assembly_docker.wdl

