#!/bin/bash

declare -a seqArray=$(find -type f -name "*_sequence" -print)

for i in ${seqArray[@]}; 
do  
  blastn -query ${i} -db /home/magnolia/aroop_work/dnmt3b/blastDB_dnmt3b/dnmt3b_transcripts.fasta &> ${i}_blastn.log
  mv ${i}_blastn.log --target-directory=H19blastResults/
done

