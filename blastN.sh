#!/bin/bash

blastDatabase=$1 # Read the database address from the path specified as first argument ! 
fastaDir=$2 # Read the FASTA file containing directory address from the path specified as second argument ! 


[ $# -ne 2 ] && { echo -e "Usage: $0 /path/to/Blast_Database/ /path/to/Query_fasta_files/\nPaths should be separated by space"; exit 1; }


declare -a seqArray=$(find $fastaDir -type f -name "*.fasta" -print) # Define an array and load into it the Fasta files of Query Sequences
mkdir ${fastaDir}/blast_Results

for fasta in ${seqArray[@]}; 
 do  
   echo ${fasta};
   blastn -query ${fasta} -db ${blastDatabase} &> ${fasta}_blastn.log;
   mv ${fasta}_blastn.log --target-directory=${fastaDir}/blast_Results/;
 done 
