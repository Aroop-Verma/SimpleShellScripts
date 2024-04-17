#!/bin/bash

declare -a file_arr=$(ls *_sequence)

for i in ${file_arr[@]}; do 
  ensembl_transcript_id=$(cat $i | sed '1d' | awk -v FS=';' '{print $2}')
  sequence=$(cat $i | sed '1d' | awk -v FS=';' '{print $1}')
  echo -e ">$ensembl_transcript_id\n$sequence" > ${ensembl_transcript_id}.fasta
done
  
