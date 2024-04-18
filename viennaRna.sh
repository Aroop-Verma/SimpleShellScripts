#!/bin/bash

FastaDir=$1;

[[ $# = 0 ]] && { echo "Usage: RNAlFold.sh Fasta-Directory/"; echo "Please specify full path to directory of your Fasta files!" ;exit 1; };

mkdir RNALfold_Output;
mkdir RNAfold_Output;

declare -a FastaFiles=$(ls $FastaDir | grep .fasta);

for file in ${FastaFiles[@]};
do 
  
  echo "Input file: ${file}";

  base_out=${file%%.fasta};
  echo "Output file will be set as: $base_out";
  
  RNALfold --infile=${file} --outfile=${base_out}_lfold.ss
  mv ${base_out}_lfold.ss RNALfold_Output/;

  RNAfold --infile=${file} --outfile=${base_out}_fold.ss
  mv ${base_out}_fold.ss RNAfold_Output/

done
