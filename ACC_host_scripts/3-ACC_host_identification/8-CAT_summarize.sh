#!/bin/bash --login

######### Assign path variables ########
CAT_DIR=/mnt/home/vascokar/CAT-master/CAT_pack
TAXONOMY_DIR=/mnt/home/vascokar/CAT-master/CAT_prepare_20210107/2021-01-07_taxonomy/
FASTA_DIR=/mnt/home/vascokar/mastitis_study/results/resistome/ARG_host/acc-deepARG/betalactam-contigs
OUTPUT_DIR=/mnt/home/vascokar/mastitis_study/results/resistome/ARG_host/acc-deepARG/CAT_output

### for loop to run all sequences in the input directory ###

cd $OUTPUT_DIR
for f in *_out.CAT.contig2classification.txt # for each sample f

do
  n=${f%%_out.CAT.contig2classification.txt} # strip part of file name

###### Runinng CAT #########

$CAT_DIR/CAT summarise -c $FASTA_DIR/${n}_beta-lactam_ARG_contigs.fasta \
-i $OUTPUT_DIR/${n}_contig2classification_names.txt \
-o $OUTPUT_DIR/${n}_CAT_summary
done