#!/bin/sh

######### Assign path variables ########
INPUT_DIRECTORY=/mnt/home/vascokar/mastitis_study/AmrPlusPlusv2/NonHostReads
OUTPUT_DIRECTORY=/mnt/home/vascokar/mastitis_study/fastqc/trimmed_nonhost

########## Modules to Load ##########

module purge
module load FastQC/0.11.7-Java-1.8.0_162

###### Runinng FastQC #########
fastqc $INPUT_DIRECTORY/*.fastq -o $OUTPUT_DIRECTORY -t 8
