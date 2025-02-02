#!/bin/bash

#for maf in $ls *maf; 
#do
#    cat $maf | cut -f1 | tail +3 | sort -n | uniq -c | sort -nr | awk '{print $2,$1}' | tr ' ' ',' > ${maf%%.maf}_gene_count
#    cat $maf | cut -f1,93 | tail +3 | sort -n | uniq -c | sort -nr | awk '{print $2,$3,$1}' | tr ' ' ',' > ${maf%%.maf}_variant_effect_count
#    cat $maf | cut -f1,9,93 | tail +3 | sort -n | uniq -c | sort -nr | awk '{print $2,$4,$3,$1}' | tr ' ' ',' > ${maf%%.maf}_variant_class_effect_count
#    cat $maf | cut -f1,9,10,93 | tail +3 | sort -n | uniq -c | sort -nr | awk '{print $2,$3,$4,$5,$1}' | tr ' ' ',' > ${maf%%.maf}_variant_class_type_effect_count
#    cat $maf | cut -f1,9,10,93,35 | tail +3 | sort -n | uniq -c | sort -nr | awk '{print $2,$3,$4,$5,$6,$1}' | tr ' ' ',' > ${maf%%.maf}_variant_class_type_INDEL_effect_count
#done
#
#cat combined_indel_maf | grep -v ^# | grep -v ^Hugo | cut -f1,9,10,93,35 | tail +3 | sort -n | uniq -c | sort -nr | awk '{print $2,$3,$4,$5,$6,$1}' | tr ' ' ',' > combined_maf_gene_sample_frequency



for i in $(ls *_GENE_indel_COUNT); 
do
    echo $i; 
    cat $i | sed -e 's/LDBPK_020150/Phosphoglycan\ beta\ 1,3\ galactosyltransferase/g' -e 's/LDBPK_040410/C-type\ lectin\ domain-containing\ protein/g' \
    -e 's/LDBPK_044340/Amastin\ surface\ glycofamily\ protein/g' -e /LDBPK_044360-CHR_END/D-isomer\ specific\ 2-hydroxyacid\ dehydrogenase\ NAD-binding\ domain-containing\ protein-CHR_END/g' \
    -e 's/LDBPK_070440/Ubiquitin-protein\ ligase-like,\ putative/g' -e 's/LDBPK_071330/Chorein\ N-terminal\ domain-containing\ protein/g' \
    -e 's/LDBPK_072500/phosphoenolpyruvate\ carboxykinase\ ATP/g' -e 's/LDBPK_080850/ribonuclease\ Z/g' \
    -e 's/LDBPK_081250/Protein\ kinase\ domain\ family\ protein/g' -e 's/LDBPK_090110/RNA\ recognition\ motif\ family\ protein,\ RNA-binding\ protein\ 5-like\ protein/g' \
    -e 's/LDBPK_091050/Chorein\ N-terminal\ domain-containing\ protein/g' -e 's/LDBPK_100950/IQ\ calmodulin-binding\ motif\ family\ protein/g' \
    -e 's/LDBPK_101460/Delta-12\ fatty\ acid\ desaturase/g' -e 's/LDBPK_111020/Starter\ acyltransferase\ SAT\ domain-containing\ protein/g' \
    -e 's/LDBPK_111210/ATP-binding\ cassette\ protein\ subfamily\ A,\ member\ 2,\ putative/g' -e 's/LDBPK_120470/WW\ domain\ containing\ protein,\ putative/g' \
    -e 's/LDBPK_120530/Fusaric\ acid\ resistance-like\ family\ protein/g' -e 's/LDBPK_141130/Dynein\ heavy\ chain,\ putative/g' \
    -e 's/LDBPK_150550/Integral\ membrane\ protein/g' -e 's/LDBPK_150800/ATP-binding\ cassette\ protein\ subfamily\ A,\ member\ 7,\ putative/g' \
    -e 's/LDBPK_151180/Protein\ kinase,\ putative/g' -e 's/LDBPK_160180/Bridge-like\ lipid\ transfer\ protein\ family\ member\ 1\ N-terminal\ domain-containing\ protein/g' \
    -e 's/LDBPK_160780/N-terminal\ region\ of\ Chorein,\ a\ TM\ vesicle-mediated\ sorter\ family\ protein/g' -e 's/LDBPK_170450/RING-type\ domain-containing\ protein/g' \
    -e 's/LDBPK_170520/Ig-like\ domain-containing\ protein/g' -e 's/LDBPK_181430/PAP-associated\ domain-containing\ protein/g' \
    -e 's/LDBPK_190590/Protein\ kinase,\ putative/g' -e 's/LDBPK_191040/Diacylglycerol\ kinase\ catalytic\ domain\ family\ protein/g' \
    -e 's/LDBPK_191110/Ankyrin\ repeats\ 3\ copies\ family\ protein/g' -e 's/LDBPK_200280/Midasin/g' \
    -e 's/LDBPK_201210/Calpain-like\ cysteine\ peptidase,\ putative/g' -e 's/LDBPK_220930/Dynein\ heavy\ chain,\ cytosolic,\ putative/g' \
    -e 's/LDBPK_230670/Galactose\ oxidase,\ central\ domain\ family\ protein/g' -e 's/LDBPK_231570/Dynein\ heavy\ chain,\ putative/g' \
    -e 's/LDBPK_240840/Inositol\ polyphosphate\ phosphatase,\ putative/g' -e 's/LDBPK_250690/Myosin\ heavy\ chain\ kinase\ c-like\ protein/g' \
    -e 's/LDBPK_251010/Dynein\ heavy\ chain,\ putative/g' -e 's/LDBPK_261090/TROVE\ domain-containing\ protein/g' \
    -e 's/LDBPK_262390/HECT-domain\ Ubiquitin-transferase\ family\ protein/g' -e 's/LDBPK_270500-LDBPK_270510/Calpain-like\ cysteine\ peptidase,\ putative/g' \
    -e 's/LDBPK_270510/Calpain-like\ cysteine\ peptidase,\ putative/g' -e 's/LDBPK_271650/Dynein\ heavy\ chain,\ putative/g' \
    -e 's/LDBPK_271870/Dpy-30\ motif\ family\ protein/g' -e 's/LDBPK_272460/dynein\ heavy\ chain\ pseudogene,\ putative/g' \
    -e 's/LDBPK_272680/Amino\ acid\ permease,\ putative/g' -e 's/LDBPK_283110/Dynein\ heavy\ chain,\ putative/g' \
    -e 's/LDBPK_290640/ATP-binding\ cassette\ protein\ subfamily\ A,\ member\ 10,\ putative/g' -e 's/LDBPK_291470/RNA\ binding\ protein,\ putative/g' \
    -e 's/LDBPK_291510/RNA\ binding\ protein,\ putative/g' -e 's/LDBPK_292300/Membrane-associated\ protein/g' \
    -e 's/LDBPK_300100/Guanine\ nucleotide-binding\ protein\ subunit\ beta-like\ protein/g' -e 's/LDBPK_301170/RNA-binding\ protein,\ putative/g' \
    -e 's/LDBPK_301810/Abnormal\ spindle-like\ microcephaly-associated\ protein\ ASH\ domain-containing\ protein/g' -e 's/LDBPK_303090/Protein\ kinase-like\ protein/g' \
    -e 's/LDBPK_310420/Calpain-like\ protein,\ putative/g' -e 's/LDBPK_310470/pseudo/g' \
    -e 's/LDBPK_310950/Sodium\ stibogluconate\ resistance\ protein,\ putative/g' -e 's/LDBPK_311030/RRM\ domain-containing\ protein/g' \
    -e 's/LDBPK_311230/RanBP2-type\ domain-containing\ protein/g' -e 's/LDBPK_311290/p-glycoprotein\ e/g' \
    -e 's/LDBPK_311340/PPM-type\ phosphatase\ domain-containing\ protein/g' -e 's/LDBPK_311350/CSD\ domain-containing\ protein/g' \
    -e 's/LDBPK_311360/Cold-shock\ DNA-binding\ domain\ containing\ protein,\ putative/g' -e 's/LDBPK_311560/Protein\ kinase,\ putative/g' \
    -e 's/LDBPK_311870/Protein\ kinase,\ putative/g' -e 's/LDBPK_311910/Integral\ membrane\ protein/g' \
    -e 's/LDBPK_311920/Mannosyltransferase-like\ protein/g' -e 's/LDBPK_320340/Integral\ membrane\ protein/g' \
    -e 's/LDBPK_321070/Tyrosine\ phosphatase\ family\ protein/g' -e 's/LDBPK_321520/non-specific\ serine/threonine\ protein\ kinase/g' \
    -e 's/LDBPK_324080/SPRY\ domain/HECT-domain\ Ubiquitin-transferase/g' -e 's/LDBPK_332920/BEACH\ domain-containing\ protein/g' \
    -e 's/LDBPK_341500/N-terminal\ region\ of\ Chorein,\ a\ TM\ vesicle-mediated\ sorter\ family\ protein/g' -e 's/LDBPK_341690/Amastin-like\ surface\ protein,\ putative/g' \
    -e 's/LDBPK_341700/Amastin-like\ surface\ protein,\ putative/g' -e 's/LDBPK_341720/Amastin-like\ surface\ protein,\ putative/g' \
    -e 's/LDBPK_342340/SEC7\ domain-containing\ protein/g' -e 's/LDBPK_343420/Integral\ membrane\ protein/g' \
    -e 's/LDBPK_350480/Protein\ kinase\ domain\ family\ protein/g' -e 's/LDBPK_351210/Helicase\ associated\ domain\ HA2\ family\ protein/g' \
    -e 's/LDBPK_353410/Death-receptor\ fusion\ protein\ DUF2428,\ putative/g' -e 's/LDBPK_355080/SPRY\ domain/HECT-domain\ Ubiquitin-transferase/g' \
    -e 's/LDBPK_361010/Dynein\ heavy\ chain,\ putative/g' -e 's/LDBPK_361500/N-terminal\ region\ of\ Chorein,\ a\ TM\ vesicle-mediated\ sorter\ family\ protein/g' \
    -e 's/LDBPK_361800/Neurobeachin/beige\ protein/g' -e 's/LDBPK_362760/Protein\ kinase,\ putative/g' -e /LDBPK_366600/Ubiquitin-protein\ ligase,\ putative/g' \
    > ${i%%gene_count_test_indel_GENE_indel_COUNT}_Protein_name_INDEL_Count;
done

