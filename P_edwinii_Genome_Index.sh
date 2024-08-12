#!/bin/bash
#SBATCH --partition=batch
#SBATCH --mail-type=ALL
#SBATCH --mail-user=ad45368@uga.edu
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=100gb
#SBATCH --time=8:00:00
#SBATCH --output=/lustre2/scratch/ad45368/ChIPseq/PeritheciaChIPAnalysis/P_edwinii_MappingOutput/logs/%x.out
#SBATCH --error=/lustre2/scratch/ad45368/ChIPseq/PeritheciaChIPAnalysis/P_edwinii_MappingOutput/logs/%x.err

####### CREATE GENOME INDEX ##########

ml SAMtools/1.16.1-GCC-11.3.0
ml BWA/0.7.17-GCCcore-11.3.0

bwa index -p GCF_019428685.1_ASM1942868v1_genomic /home/ad45368/PedwiniiGenome/GCF_019428685.1_ASM1942868v1_genomic.fna
samtools faidx /home/ad45368/PedwiniiGenome/GCF_019428685.1_ASM1942868v1_genomic.fna

#### genome directory/prefix for mapping: /home/ad45368/PedwiniiGenome/GCF_019428685.1_ASM1942868v1_genomic ####
