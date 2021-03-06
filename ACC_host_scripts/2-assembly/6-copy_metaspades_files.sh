#!/bin/bash --login
INPUT_DIRECTORY=/mnt/scratch/vascokar/mastitis_study/metaSPAdes
OUTPUT_DIRECTORY=/mnt/home/vascokar/mastitis_study/results/assembly/metaSPAdes

cd $INPUT_DIRECTORY

for dir in */; # for each sample dir
do
  n=${dir%%/} # strip the directory name

cd $OUTPUT_DIRECTORY
mkdir ${n}

cp  $INPUT_DIRECTORY/${n}/{contigs.fasta,scaffolds.fasta}  $OUTPUT_DIRECTORY/${n}
done
