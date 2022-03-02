#!/bin/bash --login

######### Assign path variables ########
CAT_DIR=/mnt/home/vascokar/CAT-master/CAT_pack
TAXONOMY_DIR=/mnt/home/vascokar/CAT-master/CAT_prepare_20210107/2021-01-07_taxonomy/
OUTPUT_DIR=/mnt/home/vascokar/mastitis_study/results/resistome/ARG_host/acc-deepARG/CAT_output

### for loop to run all sequences in the input directory ###

cd $OUTPUT_DIR
for f in *_out.CAT.contig2classification.txt # for each sample f

do
  n=${f%%_out.CAT.contig2classification.txt} # strip part of file name

###### Runinng CAT #########

$CAT_DIR/CAT add_names -i $OUTPUT_DIR/${n}_out.CAT.contig2classification.txt \
-o $OUTPUT_DIR/${n}_contig2classification_names.txt \
-t $TAXONOMY_DIR \
--only_official

done